import 'package:equatable/equatable.dart';

class AppRoute extends Equatable {
  const AppRoute(this.name);

  /// Name for this [AppRoute]
  final String name;

  @override
  List<Object?> get props => [name];
}

class AppRoutes {
  static AppRoute get register => const AppRoute('register');

  static AppRoute get test => const AppRoute('test');
}