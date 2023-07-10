import 'package:flutter/material.dart';

class TreeDetailsScreen extends StatelessWidget {
  final String treeId;

  TreeDetailsScreen({required this.treeId});

  @override
  Widget build(BuildContext context) {
    String treeName = 'Árvore $treeId';
    String treeDescription = 'Descrição da árvore $treeId';

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Árvore'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              treeName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              treeDescription,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
