import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:league/champ.dart';

class detailChamp extends StatefulWidget {
  final Champs champ;
  detailChamp(this.champ);
  @override
  _detailChampState createState() => _detailChampState();
}

class _detailChampState extends State<detailChamp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POGGERS',
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 420,
                  height: 360,
                  child: Image.network(
                    widget.champ.image_url,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.champ.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.champ.title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                      "Lore :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, top: 10, right: 15),
                    child: Text(
                      widget.champ.lore,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.redAccent),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
