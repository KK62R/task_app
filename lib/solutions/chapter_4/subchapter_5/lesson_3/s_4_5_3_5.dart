import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aufgabe 4.5.3.5')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildBox(Colors.red),
                _buildBox(Colors.green),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildBox(Colors.blue),
                _buildBox(Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
