import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  const AppCard({super.key, this.padding, this.child});

  factory AppCard.head({Widget? child}) {
    return AppCard(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: child,
    );
  }

  factory AppCard.body({Widget? child}) {
    return AppCard(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 12),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
