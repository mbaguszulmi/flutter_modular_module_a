import 'package:commons/common_blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ASettings extends StatelessWidget {
  static const path = '/a/settings';
  const ASettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("A Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("A Settings"),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                if (authBloc.state.isLoggedIn) {
                  authBloc.add(LogoutAuthEvent());
                  debugPrint("Logout");
                  return;
                }

                debugPrint("Login");

                authBloc.add(const LoginAuthEvent("Muhammad Bagus Zulmi"));
              },
              child: Text(authBloc.state.isLoggedIn ? "Logout" : "Login"),
            ),
          ],
        ),
      ),
    );
  }
}
