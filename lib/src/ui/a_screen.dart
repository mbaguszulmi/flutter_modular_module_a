import 'package:commons/common_blocs.dart';
import 'package:flutter/material.dart';
import 'package:module_a/module_a.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AScreen extends StatelessWidget {
  static const path = "/a";
  const AScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("A Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("A Home Screen"),
            const SizedBox(height: 8,),
            Text(authBloc.state.isLoggedIn
                ? "Hi, ${authBloc.state.name}"
                : "You are not Logged In"),
            const SizedBox(height: 8,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ASettings.path);
              },
              child: const Text("Go to A Settings"),
            )
          ],
        ),
      ),
    );
  }
}
