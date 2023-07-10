import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

// TODO: Replace this function with an API request to the database
Future<Map<String, dynamic>> loadJsonData() async {
    String jsonString = await rootBundle.loadString('test/tree-info.json');
    Map<String, dynamic> data = jsonDecode(jsonString);
    return data;
}

class TreeInfo extends StatefulWidget {
    const TreeInfo({super.key});
    @override
    TreeInfoState createState() => TreeInfoState();
}

class TreeInfoState extends State<TreeInfo> {
  String? imgUrl = '';
  String? name;
  String? description;


  static double iconsize = 50;

  Widget _title() {
    return const Text('Tree Info (Debug)');
  }

  @override
  void initState() {
      super.initState();
      loadJsonData().then((data) => {
                  setState(() {
                              imgUrl = data['img_url'];
                              name = data['name'];
                              description = data['description'];
                          })
              });
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
                    imgUrl ?? '',
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
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name ?? 'Loading...'),
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
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(description ?? 'Loading...'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
