import 'package:flutter/material.dart';
import 'package:photofiesta/modules/pseudo/view/pseudo_screen.dart';
import 'package:photofiesta/modules/register/view/register_screen.dart';
import 'package:photofiesta/shared/navigation/routes.dart';

MaterialPageRoute<void> onGenerateRoute(RouteSettings settings) =>
    MaterialPageRoute<void>(
      settings: settings,
      builder: (context) {
        final routeName = settings.name;

        if (routeName == AppRoutes.register.name) {
          return const RegisterScreen();
        }

        if (routeName == AppRoutes.pseudo.name) {
          return const PseudoScreen();
        }
        
        return const SizedBox.shrink();
      },
    );