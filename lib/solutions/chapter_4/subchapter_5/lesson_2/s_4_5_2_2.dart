import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Hello [Dein Name]'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
          },
          child: const Text('Klick mich'),
        ),
      ],
    );
  }
}
