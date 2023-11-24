import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'beranda_restoran.dart';


class HalamanLogin extends StatefulWidget {
  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final box = GetStorage();
  TextEditingController emailController =
      TextEditingController(text: "budi@email.com");
  TextEditingController passwordController =
      TextEditingController(text: "budi123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Restoran'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
// Input email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),

              SizedBox(height: 16.0),
// Input kata sandi
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                ),
                obscureText: true,
// Menyembunyikan teks pada input kata sandi
              ),
              SizedBox(height: 16.0),
// Tombol Login
              ElevatedButton(
                onPressed: () {
// Logika untuk memeriksa login
                  if (emailController.text == "budi@email.com" &&
                      passwordController.text == "budi123") {
                        box.write('isLogin', true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BerandaRestoran()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Gagal login'),
                      ),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
