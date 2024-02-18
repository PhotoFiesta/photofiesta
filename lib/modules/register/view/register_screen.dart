import 'package:flutter/material.dart';
import 'package:photofiesta/shared/theme/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: SafeArea(
        child: Center(
          child: Text('Register'),
        ),
      ),
    );
  }
}
