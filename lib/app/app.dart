import 'package:flutter/material.dart';
import 'package:photofiesta/app/navigation/router.dart';
import 'package:photofiesta/shared/navigation/routes.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',

      onGenerateTitle: (context) => 'PhotoFiesta',

      initialRoute: AppRoutes.register.name,
      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      onGenerateRoute: onGenerateRoute,

      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
