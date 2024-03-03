import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photofiesta/shared/theme/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 60, horizontal: 30),
          child: Column(
            children: [
              const Text(
                'Bienvenue sur PhotoFiesta',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    print('Bouton pressé');
                  },
                  icon: SvgPicture.asset('assets/svg/google.svg'),
                  label: const Text(
                    'Continuer avec Google',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
