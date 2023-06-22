import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:nos_moscada_app/services/auth.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final User? user = Auth().currentUser;

  Widget _title() {
    return const Text('Root Screen (Debug)');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User Email');
  }

  Widget _mapButton(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/map');
      },
      child: const Text('go to map'),
    );
  }

  Widget _userButton(context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home/user');
        },
        icon: const Icon(Icons.account_circle));
  }

  Widget _aboutButton(context) {
    return IconButton(
      icon: const Icon(Icons.info),
      onPressed: () {
        Navigator.pushNamed(context, '/home/about');
      },
    );
  }

  Widget _statsButton(context) {
    return IconButton(
      icon: const Icon(Icons.query_stats),
      onPressed: () {
        Navigator.pushNamed(context, 'stats');
      },
    );
  }

  Widget _reportButton(context) {
    return IconButton(
      icon: const Icon(Icons.attach_file),
      onPressed: () {
        Navigator.pushNamed(context, '/stats');
      },
    );
  }

  Widget _btnRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _aboutButton(context),
        _statsButton(context),
        _reportButton(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _userButton(context),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_mapButton(context), _btnRow(context)],
        ),
      ),
    );
  }
}
