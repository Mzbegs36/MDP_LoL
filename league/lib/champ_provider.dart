import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:league/champ.dart';

class ChampProvider extends ChangeNotifier {
  getRecommendedChamps() async {
    var result = await http
        .get(Uri.parse('https://mzbegs36.github.io/TesterAPI/champion.json'));
    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Champs> champs = data.map((item) => Champs.fromJson(item)).toList();
      return champs;
    } else {
      return <Champs>[];
    }
  }
}
