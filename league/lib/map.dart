import 'package:flutter/material.dart';
import 'package:league/map_info.dart';
import 'package:league/map_provider.dart';
import 'package:league/mappas.dart';
import 'package:provider/provider.dart';

class Kappa extends StatefulWidget {
  @override
  _KappaState createState() => _KappaState();
}

class _KappaState extends State<Kappa> {
  @override
  Widget build(BuildContext context) {
    var mapProvider = Provider.of<MapProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('League of Legends Maps'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: mapProvider.getRecommendedMap(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Peta> datas = snapshot.data;
                  return Column(
                    children: datas.map((items) {
                      return Container(
                        child: Mappas(items),
                      );
                    }).toList(),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
