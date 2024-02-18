import 'package:flutter/material.dart';
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
        return const SizedBox.shrink();
      },
    );