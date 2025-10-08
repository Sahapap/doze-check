import 'package:doze_check/core/domain/entities/option.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';

class AppDropdown extends StatelessWidget {
  static const double _borderRadius = 8.0;
  static const EdgeInsets _contentPadding = EdgeInsets.symmetric(
    horizontal: 24.0,
    vertical: 9.5,
  );
  static const EdgeInsets _iconPadding = EdgeInsets.only(right: 8.0);
  static const double _fontSize = 14.0;

  final String? hintText;
  final Color borderColor;

  final Option? initialValue;
  final List<Option> options;
  final ValueChanged<Option?>? onChanged;
  final String? Function(Option?)? validator;

  const AppDropdown({
    super.key,
    this.hintText,
    this.borderColor = AppColors.border,
    this.initialValue,
    this.options = const [],
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        border: Border.all(color: borderColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_borderRadius),
        child: DropdownButtonFormField<Option>(
          initialValue: initialValue,
          items: options
              .map(
                (option) => DropdownMenuItem<Option>(
                  value: option,
                  child: Text(option.label),
                ),
              )
              .toList(),
          onChanged: onChanged,
          validator: validator,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: _fontSize,
            color: AppColors.text1,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.text2),
            contentPadding: _contentPadding,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            isDense: true,
          ),
          icon: const Padding(
            padding: _iconPadding,
            child: Icon(Icons.keyboard_arrow_down, color: AppColors.text2),
          ),
          isExpanded: true,
          dropdownColor: Colors.white,
        ),
      ),
    );
  }
}
