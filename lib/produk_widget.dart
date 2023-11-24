import 'package:flutter/material.dart';

import 'halaman_detail_produk.dart';

class ProdukWidget extends StatelessWidget {
  final String gambarProduk;
  final String namaProduk;
  final String hargaProduk;
  const ProdukWidget({
    super.key,
    required this.gambarProduk,
    required this.namaProduk,
    required this.hargaProduk,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => HalamanDetailProduk(
              gambarProduk: gambarProduk,
              namaProduk: namaProduk,
              hargaProduk: hargaProduk,
            ),
          ),
        );
      },
      child: Hero(
        tag: namaProduk,
        child: Material(
          child: Column(
            children: <Widget>[
              Image.network(gambarProduk, width: 80, height: 80),
              Text(namaProduk),
              Text(hargaProduk),
            ],
          ),
        ),
      ),
    );
  }
}
