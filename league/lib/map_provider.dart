import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:league/map_info.dart';

class MapProvider extends ChangeNotifier {
  getRecommendedMap() async {
    var result = await http
        .get(Uri.parse('https://mzbegs36.github.io/TesterAPI/map_lol.json'));
    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List datas = jsonDecode(result.body);
      List<Peta> peta = datas.map((items) => Peta.fromJson(items)).toList();
      return peta;
    } else {
      return <Peta>[];
    }
  }
}
