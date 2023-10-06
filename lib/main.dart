import 'package:flutter/material.dart';
import 'beranda_restoran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projek Pertama',
      home: BerandaRestoran(),
    );
  }
}
