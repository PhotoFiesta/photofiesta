import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:photofiesta/shared/theme/colors.dart';
import 'package:photofiesta/shared/theme/continue_button.dart';
import 'package:photofiesta/shared/theme/text_input.dart';

class PseudoScreen extends StatefulWidget {
  const PseudoScreen({super.key});

  @override
  State<PseudoScreen> createState() => _PseudoScreenState();
}

class _PseudoScreenState extends State<PseudoScreen> {
  String pseudo = '';

  void onPseudoChanged(String value) {
    setState(() {
      pseudo = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Entrez un pseudo'),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48,
              ),
              child: AppTextInput(
                onChanged: onPseudoChanged,
              ),
            ),
            const Gap(20),
            ContinueButton(
              onPressed: () {},
            ),
            const Gap(30),
          ],
        ),
      )),
    );
  }
}
