import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_tutorial_1/halaman_detail_produk.dart';
import 'package:projek_tutorial_1/halaman_login.dart';
import 'package:projek_tutorial_1/produk_widget.dart';

class BerandaRestoran extends StatelessWidget {
  const BerandaRestoran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Beranda Restoran'),
        actions: [
          PopupMenuButton(
// add icon, by default "3 dot" icon
// icon: Icon(Icons.book)
              itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("My Account"),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Logout"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My account menu is selected.");
            } else if (value == 1) {
              final box = GetStorage();
              box.write("isLogin", false);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HalamanLogin()),
              );
            }
          }),
        ],
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
              ProdukWidget(
                gambarProduk: "https://demo-asset.jatendev.com/gambar/3.png",
                hargaProduk: "Rp 50.000",
                namaProduk: "Makanan 1",
              ),
              ProdukWidget(
                gambarProduk: "https://demo-asset.jatendev.com/gambar/4.png",
                hargaProduk: "Rp 60.000",
                namaProduk: "Makanan 2",
              ),
              ProdukWidget(
                gambarProduk: "https://demo-asset.jatendev.com/gambar/5.png",
                hargaProduk: "Rp 55.000",
                namaProduk: "Makanan 3",
              ),
              ProdukWidget(
                gambarProduk: "https://demo-asset.jatendev.com/gambar/6.png",
                hargaProduk: "Rp 70.000",
                namaProduk: "Makanan 4",
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
