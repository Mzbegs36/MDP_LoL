import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x2596beff),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                      'https://media.discordapp.net/attachments/889039605251313696/905397358358061096/gambar.jpg'),
                ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white10,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Yohanes Kukuh Niti Cahya Bagaskara",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("21120119130095",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 50),
                      child: Text(
                        "         Aplikasi ini merupakan aplikasi yang dapat menampilkan data dan gambar dari Champion di dalam permainan League of Legends. Permainan ini dikembangkan oleh Developer Riot. Aplikasi ini dibuat dalam rangka memenuhi tugas akhir praktikum Mobile Device Programming jurasan Teknik Komputer Universitas Diponegoro Tahun 2021",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
