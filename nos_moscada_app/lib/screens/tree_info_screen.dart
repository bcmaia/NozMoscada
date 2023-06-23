import 'package:flutter/material.dart';

class TreeInfo extends StatelessWidget {
  const TreeInfo({super.key});

  static double iconsize = 50;

  Widget _title() {
    return const Text('Tree Info (Debug)');
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB4_zazLmJiReCYFvS-RrOk560-oE4rQI2HA&usqp=CAU",
                    fit: BoxFit.fitWidth,
                    width: 400,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Nome:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("As Arveres Somos Nozes"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Descrição:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("As verdadeiras arvores são os amigos que fazemos no caminho."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
