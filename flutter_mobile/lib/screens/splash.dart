import 'package:flutter/material.dart';
import 'package:flutter_mobile/screens/incidents.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Incidents())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset('assets/splash.png', fit: BoxFit.cover));
  }
}
