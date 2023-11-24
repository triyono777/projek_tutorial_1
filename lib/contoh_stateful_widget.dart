import 'package:flutter/material.dart';

class ContohStateFullWidget extends StatefulWidget {
  @override
  _ContohStateFullWidgetState createState() => _ContohStateFullWidgetState();
}

class _ContohStateFullWidgetState extends State<ContohStateFullWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text("Nilai: $count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
