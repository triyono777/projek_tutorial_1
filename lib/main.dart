import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projek_tutorial_1/beranda_restoran.dart';
import 'package:projek_tutorial_1/page/list_page.dart';
import 'firebase_options.dart';
import 'halaman_login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        splash: Text(
          'Resto Mantap',
          style: TextStyle(color: Colors.green),
        ),
        screenFunction: () async {
          final box = GetStorage();
          if (box.read("isLogin") == true) {
            return ListPage();
          } else {
            return HalamanLogin();
          }
        },
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
