// TODO: develop a about screen to enable users to learn more about
// the Noz Moscada project.

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget _title() {
    return const Text('About Screen (Debug)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sobre o App',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Este aplicativo foi desenvolvido para facilitar a catalogação das árvores do campus. Ele permite que os usuários adicionem informações sobre as árvores, como espécie, localização e observações.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Informes de Árvores em Estado Crítico',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Se você encontrar uma árvore que pareça estar em estado crítico, com risco de queda de galhos ou da própria árvore, por favor, envie um informe através do aplicativo. Nós avaliaremos a situação e tomaremos as medidas necessárias.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
