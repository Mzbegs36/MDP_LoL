import 'package:flutter/material.dart';
import 'package:league/map_info.dart';

class detailMap extends StatefulWidget {
  final Peta peta;
  detailMap(this.peta);
  @override
  _detailMapState createState() => _detailMapState();
}

class _detailMapState extends State<detailMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MonkaGigas',
        ),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 25),
              child: Center(
                  child: Text(
                widget.peta.Mapname,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
            ),
            Center(
              child: Container(
                height: 320,
                width: 400,
                child: Image.network(
                  widget.peta.Image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 15),
              child: Text(
                widget.peta.Desc,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
