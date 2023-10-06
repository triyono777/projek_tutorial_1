import 'package:flutter/material.dart';

class BerandaRestoran extends StatelessWidget {
  const BerandaRestoran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Beranda Restoran'),
      ),
      body: Column(
        children: <Widget>[
          // Gambar restoran di atas
          Image.network(
            'https://demo-asset.jatendev.com/gambar/gambar1.png',
            width: 300,
            height: 200,
          ),
          // Nama restoran
          Text(
            'Restoran Lezat',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          // Deskripsi restoran
          Text(
            'Restoran Lezat adalah tempat makan yang menawarkan berbagai hidangan lezat dari seluruh dunia. Nikmati pengalaman kuliner yang luar biasa di sini!',
            style: TextStyle(fontSize: 16),
          ),

          // Daftar menu dalam Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network('https://demo-asset.jatendev.com/gambar/3.png',
                      width: 80, height: 80),
                  Text('Makanan 1'),
                  Text('Rp 50.000'),
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network('https://demo-asset.jatendev.com/gambar/4.png',
                      width: 80, height: 80),
                  Text('Makanan 2'),
                  Text('Rp 60.000'),
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network('https://demo-asset.jatendev.com/gambar/5.png',
                      width: 80, height: 80),
                  Text('Makanan 3'),
                  Text('Rp 55.000'),
                ],
              ),
              Column(
                children: <Widget>[
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.network(
                          'https://demo-asset.jatendev.com/gambar/6.png',
                          width: 80,
                          height: 80),
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
                  Text('Makanan 4'),
                  Text('Rp 70.000'),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Terima Kasih",
              style: TextStyle(color: Colors.white),
            ),
          ),

          // Tombol pemesanan
          ElevatedButton(
            onPressed: () {
              // Logika pemesanan
            },
            child: Text('Pesan Sekarang'),
          ),
        ],
      ),
    );
  }
}
