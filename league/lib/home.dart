import 'package:flutter/material.dart';
import 'package:league/champ.dart';
import 'package:league/champ_provider.dart';
import 'package:league/hero.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var champProvider = Provider.of<ChampProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Text('League of Legends'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  'http://ddragon.leagueoflegends.com/cdn/img/champion/splash/MonkeyKing_2.jpg',
                  height: 200,
                  width: 400,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Text("Most Used Champion"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2),
              child: FutureBuilder(
                  future: champProvider.getRecommendedChamps(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Champs> data = snapshot.data;
                      return Column(
                        children: data.map((item) {
                          return Container(
                            child: Heroin(item),
                          );
                        }).toList(),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
