import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:module_a/src/ui/a_screen.dart';
import 'package:module_a/src/ui/a_settings.dart';

class _Router {
  // define global bloc here
  // static ABloc aBloc = ABloc;

  static final Map<String, Widget Function(RouteSettings)> _routes = {
        AScreen.path: (settings) => navigateWithBloc(
              child: const AScreen(),
            ),
        ASettings.path: (settings) => navigateWithBloc(
              child: const ASettings(),
            ),
      };

  static get routes => _routes;

  static Widget navigateWithBloc({required Widget child}) {
    return child;
    // if using global Bloc
    return MultiBlocProvider(
      providers: [
        // BlocProvider.value(
        //   value: aBloc,
        // ),
      ],
      child: child,
    );
  }
}

Map<String, Widget Function(RouteSettings)> generateARoute() {
  return _Router.routes;
}
