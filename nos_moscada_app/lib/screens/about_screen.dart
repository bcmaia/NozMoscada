// TODO: develop a about screen to enable users to learn more about
// the Noz Moscada project.

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  Widget _title() {
    return const Text('Root Screen (Debug)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(),
    );
  }
}
