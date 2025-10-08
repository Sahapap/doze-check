import 'package:flutter/material.dart';

class AppMultiOptionToggle extends StatelessWidget {
  final List<String> options;
  final List<MaterialColor> optionColors;
  final int selectedIndex;
  final void Function(int index) onChanged;

  const AppMultiOptionToggle({
    super.key,
    required this.options,
    required this.optionColors,
    required this.selectedIndex,
    required this.onChanged,
  }) : assert(
         optionColors.length == options.length,
         'optionColors length must match options length',
       );

  @override
  Widget build(BuildContext context) {
    final isSelected = List<bool>.generate(
      options.length,
      (i) => i == selectedIndex,
    );

    // Pick the active color based on the selected button
    final baseColor = optionColors[selectedIndex];

    return ToggleButtons(
      isSelected: isSelected,
      onPressed: onChanged,
      borderRadius: BorderRadius.circular(8.0),
      selectedBorderColor: baseColor.shade700,
      selectedColor: Colors.white,
      fillColor: baseColor.shade200,
      color: baseColor.shade400,
      constraints: const BoxConstraints(
        minHeight: 48,
        minWidth: double.infinity,
      ),
      children: List.generate(options.length, (index) {
        final selected = isSelected[index];
        return Text(
          options[index],
          style: TextStyle(
            color: selected ? Colors.white : baseColor.shade400,
            fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
          ),
        );
      }),
    );
  }
}
