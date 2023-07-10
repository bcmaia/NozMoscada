// TODO: develop a user screen to enable users to acess and change their data
// and change settings.

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:nos_moscada_app/services/auth.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  final User? user = Auth().currentUser;

  Widget _title() {
    return const Text('User screen(debug)');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User Email');
  }

  Widget _singOutButton() {
    return ElevatedButton(
        onPressed: () {
          Auth().signOut();
        },
        child: const Text("sing Out"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_userUid(), _singOutButton()],
        ),
      ),
    );
  }
}
