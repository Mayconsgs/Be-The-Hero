import 'package:flutter/material.dart';
import 'package:flutter_mobile/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be The Hero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 224, 32, 65),
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color.fromARGB(255, 240, 240, 245),
        textTheme: TextTheme(
            button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
            headline1: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 19, 19, 26),
            ),
            headline2: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 19, 19, 26),
              height: 1.3,
            ),
            subtitle1: TextStyle(
              color: Color.fromARGB(255, 115, 115, 128),
              fontSize: 15,
            ),
        ),
      ),
      home: Splash(),
    );
  }
}
