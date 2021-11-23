import 'package:flutter/material.dart';
import 'dart:async';

import 'package:league/main.dart';
import 'package:league/navBar.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyBottomNavBar();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Aatrox_7.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: CircularProgressIndicator(
                    strokeWidth: 10, color: Colors.blue),
              )),
        ),
      ),
    );
  }
}
