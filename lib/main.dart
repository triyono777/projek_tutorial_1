import 'dart:math';

import 'package:flutter/material.dart';
import 'beranda_restoran.dart';
import 'halaman_login.dart';
import 'package:get_storage/get_storage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projek Pertama',
      home: AnimatedSplashScreen.withScreenFunction(
        duration: 3000,
        splash: Text('Toko Online'),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
        screenFunction: () async {
          final box = GetStorage();
          print(box.getKeys());
          if (box.read("isLogin") == true) {
            return BerandaRestoran();
          } else {
            return HalamanLogin();
          }
        },
      ),
    );
  }
}
