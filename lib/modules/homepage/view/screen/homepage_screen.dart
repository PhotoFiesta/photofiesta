import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:photofiesta/modules/homepage/view/widgets/homepage_button.dart';
import 'package:photofiesta/shared/theme/colors.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bubbleDiameter = 233.0;

    return Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: Container(
                    width: bubbleDiameter,
                    height: bubbleDiameter,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.yellowBubble,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left: -100,
                  child: Container(
                    width: bubbleDiameter,
                    height: bubbleDiameter,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.yellowBubble,
                    ),
                  ),
                ),
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(20),
                      Text(
                        'Bonjour Ananas 👋',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.greyText),
                      ),
                      Gap(4),
                      Text('Prêt(e) à jouer ?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          )),
                      Gap(60),
                    ]),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: HomepageButton(
                            iconAction: SvgPicture.asset('assets/svg/play.svg'),
                            label: 'Créer une partie',
                            illustration: SvgPicture.asset(
                                'assets/svg/competition_outline.svg'),
                            backGroundLinearGradient: const LinearGradient(
                                colors: [
                                  AppColors.pinkGradientStart,
                                  AppColors.pinkGradientEnd
                                ]),
                            onPressed: () {}),
                      ),
                      const Gap(60),
                      SizedBox(
                        width: double.infinity,
                        child: HomepageButton(
                            iconAction: SvgPicture.asset('assets/svg/add.svg'),
                            label: 'Rejoindre une partie',
                            illustration: SvgPicture.asset(
                                'assets/svg/winner_outline.svg'),
                            backGroundLinearGradient: const LinearGradient(
                                colors: [
                                  AppColors.blueGradientStart,
                                  AppColors.blueGradientEnd
                                ]),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
