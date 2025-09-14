import 'package:flutter/material.dart';

class HeightReporter extends StatelessWidget {
  final Widget child;

  const HeightReporter({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        // ignore: avoid_print
        print('Height is ${context.size?.height}');
      },
    );
  }
}
