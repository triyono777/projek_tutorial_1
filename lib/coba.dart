import 'package:flutter/material.dart';
import 'beranda_restoran.dart';

class HalamanLogin extends StatefulWidget {
  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
//Halaman 13 | 27
// www.jatendev.com //
//Halaman 14 | 27
// Logika untuk memeriksa login
                  if (emailController.text == "budi@email.com" &&
                      passwordController.text == "budi123") {
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
