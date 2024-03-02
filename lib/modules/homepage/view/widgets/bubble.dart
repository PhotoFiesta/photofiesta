import 'package:flutter/material.dart';
import 'package:photofiesta/shared/theme/colors.dart';

class Bubble extends StatelessWidget {
  const Bubble({super.key, required this.diameter});

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.yellowBubble,
      ),
    );
  }
}
