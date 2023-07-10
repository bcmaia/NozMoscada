import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nos_moscada_app/services/auth.dart';
import 'package:nos_moscada_app/shared/general_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> signInAnom() async {
    try {
      await Auth().anonLogin();
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      await Auth().googleLogin();
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo ao Sistema NozMoscada!'),
      ),
      body: responsiveBox(
        padding: 20.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            entryField('Email', _controllerEmail),
            entryField('Senha', _controllerPassword),
            const SizedBox(height: 16.0),
            responsiveButton(
              onPressed: signInWithEmailAndPassword,
              child: const Text('Entrar'),
            ),
            displayError(errorMessage),
            line(),
            LoginButton(
              icon: FontAwesomeIcons.userNinja,
              text: 'Entrar como convidado',
              loginMethod: signInAnom,
              color: Colors.purple,
            ),
            const SizedBox(height: 16.0),
            LoginButton(
              icon: FontAwesomeIcons.google,
              text: 'Entrar com o google',
              loginMethod: signInWithGoogle,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
