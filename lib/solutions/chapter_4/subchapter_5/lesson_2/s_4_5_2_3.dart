import 'package:flutter/material.dart';
class S4523 extends StatefulWidget {
  const S4523({super.key});
  @override
  State<S4523> createState() => _S4523State();
}
class _S4523State extends State<S4523> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = 'Kardelen';
                });
              },
              child: const Text('Name anzeigen'),
            ),
          ],
        ),
      ),
    );
  }
}
