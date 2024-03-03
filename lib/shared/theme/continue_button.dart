import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photofiesta/shared/theme/colors.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.onPressed,
    this.isDisabled = false,
  });

  final void Function() onPressed;

  final bool isDisabled;

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
          color: isDisabled ? AppColors.greyBackground : Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('assets/svg/right_arrow.svg'),
      ),
    );
  }
}
