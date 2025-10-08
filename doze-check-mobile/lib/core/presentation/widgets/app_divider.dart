import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final Color color;

  const AppDivider({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(width: 93, height: 6, color: color);
  }
}
