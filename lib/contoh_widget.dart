import 'package:flutter/material.dart';

class ContohWidget extends StatelessWidget {
  const ContohWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh widget'),
      ),
      body: ListView(
        children: [
          Text('contoh child'),
          Container(
            child: Image.network('https://demo-asset.jatendev.com/gambar/3.png',
                width: 80, height: 80),
          ),
          Center(
            child: Image.network(
                'https://demo-asset.jatendev.com/gambar/20.png',
                width: 80,
                height: 80),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'https://demo-asset.jatendev.com/gambar/2.png',
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star),
              Text('4.5'),
              Text('(123 ulasan)'),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Judul Artikel'),
              Text('Isi artikel yang panjang...'),
              ElevatedButton(
                child: Text('Baca Selengkapnya'),
                onPressed: () {
                  // Logika ketika tombol ditekan
                },
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network('https://demo-asset.jatendev.com/gambar/5.png',
                  width: 80, height: 80),
              Positioned(
                top: -10,
                left: 0,
                child: Container(
                  child: Image.network(
                      'https://demo-asset.jatendev.com/gambar/favorit.png',
                      width: 30,
                      height: 30),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
