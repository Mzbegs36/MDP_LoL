import 'package:flutter/material.dart';
import 'package:league/detail2.dart';
import 'package:league/map_info.dart';

class Mappas extends StatelessWidget {
  final Peta peta;
  Mappas(this.peta);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => detailMap(peta)));
      },
      child: Container(
          height: 500,
          width: double.infinity,
          child: Image.network(peta.Image)),
    );
  }
}
