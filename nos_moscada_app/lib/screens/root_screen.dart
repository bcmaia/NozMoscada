import 'package:flutter/material.dart';
import 'package:nos_moscada_app/screens/home_screen.dart';
import 'package:nos_moscada_app/services/auth.dart';

import 'login_screen.dart';


class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}


class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        //if (snapshot.hasError) {} // TODO: Error Handling
        if (snapshot.hasData) {return HomeScreen();}

        return const LoginScreen();
      },
    );
  }
}