import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String? hint;
  final String? unit;

  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key,
    this.hint,
    this.unit,
    this.controller,
    this.validator,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _error = false;
  String _message = '';

  @override
  Widget build(BuildContext context) {
    final borderColor = _error ? AppColors.danger : AppColors.border;

    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: widget.controller,
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: widget.hint,
                      hintStyle: const TextStyle(color: AppColors.text2),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 9.5,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      isDense: true,
                    ),
                    validator: (value) {
                      final result = widget.validator?.call(value);
                      setState(() {
                        _error = result != null; // true if validation failed
                        _message = result ?? '';
                      });
                      return result;
                    },
                    errorBuilder: (context, errorText) =>
                        const SizedBox.shrink(),
                  ),
                ),
                if (widget.unit != null)
                  Container(
                    width: 81,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      border: Border(left: BorderSide(color: borderColor)),
                    ),
                    child: Center(
                      child: Text(
                        widget.unit!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.text1,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        if (_error)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              _message,
              style: const TextStyle(fontSize: 12, color: AppColors.danger),
            ),
          ),
      ],
    );
  }
}
