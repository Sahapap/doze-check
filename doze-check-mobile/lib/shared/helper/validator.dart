import 'package:flutter/material.dart';

// Method chaining for text field validation
class Validator {
  final BuildContext context;

  Validator(this.context);

  factory Validator.email(BuildContext context) {
    return Validator(context).withRequired().withPattern(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
  }

  factory Validator.phone(BuildContext context) {
    return Validator(context).withRequired().withPattern(r'^[0-9]{10,12}$');
  }

  factory Validator.password(BuildContext context) {
    return Validator(context).withRequired().withMinLength(6).withMaxLength(16);
  }

  factory Validator.currency(BuildContext context) {
    return Validator(context).withRequired().withDecimal(digit: 10, float: 2);
  }

  factory Validator.number(BuildContext context) {
    return Validator(context).withRequired().withPattern(r'^[0-9]+$');
  }

  final List<String? Function(String?)> _validators = [];

  bool _allowEmpty = false;

  bool isEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  Validator withEmpty() {
    _allowEmpty = true;
    return this;
  }

  Validator withRequired() {
    _allowEmpty = false;
    _validators.add((value) {
      if (isEmpty(value)) {
        return 'กรุณากรอกข้อมูล';
      }

      return null;
    });

    return this;
  }

  Validator withMinLength(int length) {
    _validators.add((value) {
      if (value == null || value.length < length) {
        return 'กรุณากรอกข้อมูลอย่างน้อย $length ตัวอักษร';
      }

      return null;
    });

    return this;
  }

  Validator withMaxLength(int length) {
    _validators.add((value) {
      if (value == null || value.length > length) {
        return 'กรุณากรอกข้อมูลไม่เกิน $length ตัวอักษร';
      }

      return null;
    });

    return this;
  }

  Validator withDecimal({int digit = 10, int float = 2}) {
    _validators.add((value) {
      if (value == null) {
        return 'กรุณากรอกข้อมูลให้ถูกต้อง';
      }

      final parts = value.split('.');

      if (parts.length > 2) {
        return 'กรุณากรอกข้อมูลให้ถูกต้อง';
      }

      if (parts[0].length > digit) {
        return 'กรุณากรอกข้อมูลให้ถูกต้อง';
      }

      if (parts.length == 2 && parts[1].length > float) {
        return 'กรุณากรอกข้อมูลให้ถูกต้อง';
      }

      return null;
    });

    return this;
  }

  Validator withPattern(String pattern) {
    final regex = RegExp(pattern);

    _validators.add((value) {
      if (value == null || !regex.hasMatch(value)) {
        return 'กรุณากรอกข้อมูลให้ถูกต้อง';
      }

      return null;
    });

    return this;
  }

  String? _validate(String? value) {
    for (var i = 0; i < _validators.length; i++) {
      if (_allowEmpty && isEmpty(value)) {
        return null;
      }

      final error = _validators[i](value);
      if (error != null) {
        return error;
      }
    }

    return null;
  }

  String? Function(String?) build() {
    return _validate;
  }
}
