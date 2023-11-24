import 'package:flutter/material.dart';
import 'halaman_login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get_storage/get_storage.dart';

main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projek Pertama',
      home: AnimatedSplashScreen.withScreenFunction(
        splash: Text('Resto Mantap'),
        screenFunction: () async {
          return HalamanLogin();
        },
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
