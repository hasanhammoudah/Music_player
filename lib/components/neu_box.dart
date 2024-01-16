import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  const NeuBox({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shadow on bottom right
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 15,
              offset: const Offset(4, 4)),
          // lighter shadow on top left
          const BoxShadow(
              color: Colors.white, blurRadius: 15, offset: Offset(-4, -4)),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}
