import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aufgabe 4.5.3.1')),
      body: Column(
        children: [
          Container(height: 100, color: Colors.blueGrey),
          Container(height: 100, color: Colors.blue),
          Container(height: 100, color: Colors.cyan),
        ],
      ),
    );
  }
}
