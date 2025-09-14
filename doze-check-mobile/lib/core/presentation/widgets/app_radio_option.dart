import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';

class RadioOption extends StatelessWidget {
  final bool value;
  final bool? groupValue;
  final String text;
  final ValueChanged<bool?> onChanged;

  const RadioOption({
    super.key,
    required this.value,
    required this.groupValue,
    required this.text,
    required this.onChanged,
  });

  bool get isSelected => groupValue == value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isSelected ? AppColors.selected : AppColors.deselected,
        ),
        child: Row(
          spacing: 10,
          children: [
            Transform.scale(
              scale: 1.5,
              child: Radio<bool>(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                fillColor: WidgetStateProperty.resolveWith((states) {
                  return states.contains(WidgetState.selected)
                      ? AppColors.secondary
                      : AppColors.text1;
                }),
              ),
            ),
            Expanded(child: AppLabel.body(text)),
          ],
        ),
      ),
    );
  }
}
