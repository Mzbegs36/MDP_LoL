import 'package:flutter/material.dart';
import 'package:league/champ_provider.dart';
import 'package:league/map_provider.dart';
import 'package:league/splash.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChampProvider>(
          create: (context) => ChampProvider(),
        ),
        ChangeNotifierProvider<MapProvider>(
          create: (context) => MapProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {'/': (context) => SplashPage()},
      ),
    );
  }
}
