import 'package:flutter/material.dart';

class HalamanDetailProduk extends StatefulWidget {
  final String? gambarProduk;
  final String? namaProduk;
  const HalamanDetailProduk({super.key, this.gambarProduk, this.namaProduk});
  @override
  State<HalamanDetailProduk> createState() => _HalamanDetailProdukState();
}

class _HalamanDetailProdukState extends State<HalamanDetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
// Gambar produk
            Image.network(
              widget.gambarProduk ??
                  "https://demo-asset.jatendev.com/gambar/placeholder.png",
              width: 300,
              height: 200,
            ),
            SizedBox(height: 16.0),
// Nama produk
            Text(
              widget.namaProduk ?? "nama",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
// Deskripsi produk
            Text(
              'Deskripsi produk akan ditampilkan di sini. Ini adalah tempat untuk menjelaskan produk dengan detail.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
// Harga produk
            Text(
              'Harga: Rp 50.000',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
// Tombol Pesan
            ElevatedButton(
              onPressed: () {
// Logika pemesanan produk
              },
              child: Text('Pesan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
