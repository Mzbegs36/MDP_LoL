import 'package:flutter/material.dart';
import 'package:league/champ.dart';
import 'package:league/detail1.dart';

class Heroin extends StatelessWidget {
  final Champs champ;
  Heroin(this.champ);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => detailChamp(champ)));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          backgroundImage: NetworkImage(champ.icon),
        ),
        title: Text(champ.name),
        subtitle: Text(champ.title),
      ),
    );
  }
}
