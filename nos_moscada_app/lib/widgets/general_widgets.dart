import 'package:flutter/material.dart';

Widget entryField(
  String title,
  TextEditingController controller,
) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: title,
    ),
  );
}

Widget displayError(String? errorMessage) {
  String msg = (null == errorMessage) ? ('Unknown error') : (errorMessage);


  return Column(children: ('' == msg) ? <Widget>[] : <Widget>[
    const SizedBox(height: 8.0),
    Text('Error: $msg'),
    const SizedBox(height: 8.0),
  ]);
}

Widget responsiveBox(
    {double padding = 0.0, Widget child = const Placeholder()}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double widthFactor;

        if (constraints.maxWidth >= 1800) {
          widthFactor = 0.333;
        } else if (constraints.maxWidth >= 1200) {
          widthFactor = 0.5;
        } else if (constraints.maxWidth >= 600) {
          widthFactor = 0.80;
        } else {
          widthFactor = 1;
        }

        return Center(
          child: FractionallySizedBox(
            widthFactor: widthFactor,
            child: child,
          ),
        );
      },
    ),
  );
}

Widget responsiveButton({
  double padding = 0.0,
  required void Function() onPressed,
  Widget child = const Text('Hello, World!'),
}) {
  return FractionallySizedBox(
    widthFactor: 1,
    child: ElevatedButton(
      onPressed: onPressed,
      child: child,
    ),
  );
}

Widget line({
  double horizontalMargin = 16.0,
  double thickness = 1.0,
  Color color = Colors.grey,
}) {
  return Column(children: <Widget>[
    SizedBox(height: horizontalMargin),
    Divider(color: color, thickness: thickness),
    SizedBox(height: horizontalMargin)
  ]);
}



class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.loginMethod,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton.icon(
        label: Text(text),
        onPressed: () => loginMethod(),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(8),
          backgroundColor: color,
        ),
      ),
    );
  }
}