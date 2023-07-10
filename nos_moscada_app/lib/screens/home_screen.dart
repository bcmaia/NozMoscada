import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:nos_moscada_app/services/auth.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  static double iconsize = 50;

  final User? user = Auth().currentUser;

  Widget _mapButton(context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/map');
          },
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB4_zazLmJiReCYFvS-RrOk560-oE4rQI2HA&usqp=CAU",
            fit: BoxFit.fitWidth,
            width: 110,
            height: 300,
          ),
        ));
  }

  Widget _userButton(context) {
    return IconButton(
        iconSize: iconsize,
        onPressed: () {
          Navigator.pushNamed(context, '/home/user');
        },
        icon: const Icon(Icons.account_circle));
  }

  Widget _aboutButton(context) {
    return IconButton(
      iconSize: iconsize,
      icon: const Icon(Icons.info),
      onPressed: () {
        Navigator.pushNamed(context, '/home/about');
      },
    );
  }

  Widget _statsButton(context) {
    return IconButton(
      iconSize: iconsize,
      icon: const Icon(Icons.query_stats),
      onPressed: () {
        Navigator.pushNamed(context, '/stats');
      },
    );
  }

  Widget _reportButton(context) {
    return IconButton(
      iconSize: iconsize,
      icon: const Icon(Icons.attach_file),
      onPressed: () {
        Navigator.pushNamed(context, '/report');
      },
    );
  }

  Widget _treeButton(context) {
    return IconButton(
      iconSize: iconsize,
      icon: const Icon(Icons.eco_rounded),
      onPressed: () {
        Navigator.pushNamed(context, '/tree');
      },
    );
  }

  Widget _btnRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        _aboutButton(context),
        const Spacer(),
        _statsButton(context),
        const Spacer(),
        _reportButton(context),
        const Spacer(),
        _treeButton(context),
        const Spacer(),
      ],
    );
  }

  Widget _newsSection() {
    return Container(
      height: 150.0,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            child: Text(
              'Últimas Notícias',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo velit non purus fringilla congue. Phasellus et lectus sed dui efficitur gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec iaculis pharetra cursus.',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _mapButton(context),
            _btnRow(context),
            Expanded(child: _newsSection())
          ],
        ),
      ),
    );
  }
}
