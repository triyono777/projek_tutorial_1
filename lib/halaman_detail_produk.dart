import 'package:flutter/material.dart';

class HalamanDetailProduk extends StatefulWidget {
  final String? gambarProduk;
  final String? namaProduk;
  final String? hargaProduk;
  const HalamanDetailProduk(
      {super.key, this.gambarProduk, this.namaProduk, this.hargaProduk});
  @override
  State<HalamanDetailProduk> createState() => _HalamanDetailProdukState();
}

class _HalamanDetailProdukState extends State<HalamanDetailProduk> {
  int jumlahPesanan = 0; // Menyimpan jumlah pesanan

  void tambahPesanan() {
    setState(() {
      jumlahPesanan++; // Menambah jumlah pesanan
    });
  }

  void kurangPesanan() {
    if (jumlahPesanan > 0) {
      setState(() {
        jumlahPesanan--; // Mengurangi jumlah pesanan jika lebih dari 0
      });
    }
  }

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
            Hero(
              tag: widget.namaProduk.toString(),
              child: Image.network(
                widget.gambarProduk ??
                    "https://demo-asset.jatendev.com/gambar/placeholder.png",
                width: 300,
                height: 200,
              ),
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
              widget.hargaProduk ?? 'Harga: Rp -',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),

            // Tampilkan jumlah pesanan
            Center(
              child: Text(
                'Jumlah Pesanan: $jumlahPesanan',
                style: TextStyle(fontSize: 18),
              ),
            ),
// Tombol Pesan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: kurangPesanan,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: tambahPesanan,
                  child: Icon(Icons.add),
                ),
              ],
            ),

            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logika pemesanan produk
                },
                child: Text('Pesan Sekarang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
