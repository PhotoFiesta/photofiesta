import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('assets/svg/right_arrow.svg'),
      ),
    );
  }
}
