import 'package:flutter/material.dart';

class ContohStateLessWidget extends StatelessWidget {
  const ContohStateLessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless widget'),
      ),
      body: Center(
        child: Text("Hallo , semangat ya"),
      ),
    );
  }
}
