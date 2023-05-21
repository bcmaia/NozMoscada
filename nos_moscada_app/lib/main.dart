import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_core/firebase_core.dart';
import 'package:nos_moscada_app/screens/login_screen.dart';
import 'package:nos_moscada_app/screens/root_screen.dart';
import 'package:nos_moscada_app/services/auth.dart';

import 'package:nos_moscada_app/style/app_theme.dart';


Future<void> main() async {

  // Enshuring some stuff is initialized
  // Necessary to connect to firebase
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase if running on the web platform
  if (kIsWeb) { // web
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyD44r9m38Vga6EkmXGa2Z8ZY00t7JjzgFw',
          appId: '1:693206006678:web:ab41c02862473f34747bb7',
          messagingSenderId: '693206006678',
          projectId: 'nozmoscada-222bd',
        ),
    );
  } else { // other platforms
    // TODO: add a switch for each platform.
    await Firebase.initializeApp();
  }

  // Entry point to build the whole app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noz Moscada',
      // debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const WidgetTree(title: 'Flutter Demo Home Page'),
    );
  }
}


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key, required this.title});

  final String title;

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}


class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        //if (snapshot.hasError) {} // TODO: Error Handling
        if (snapshot.hasData) {return RootScreen();}

        return const LoginScreen();
      },
    );
  }
}
