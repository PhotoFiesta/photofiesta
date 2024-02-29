import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomepageButton extends StatelessWidget {
  const HomepageButton({
    super.key,
    required this.iconAction,
    required this.label,
    required this.illustration,
    required this.backGroundLinearGradient,
    required this.onPressed,
  });

  final SvgPicture iconAction;
  final String label;
  final SvgPicture illustration;
  final LinearGradient backGroundLinearGradient;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -40,
          right: 40,
          child: SizedBox(
            width: 100,
            height: 90,
            child: illustration,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: onPressed,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: backGroundLinearGradient,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: iconAction,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
