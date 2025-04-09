import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Name ein-/ausblenden')),
      body: const Center(
        child: ShowHideNameWidget(),
      ),
    );
  }
}
class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = ''; 
  String buttonText = 'Name anzeigen'; 

  void _toggleName() {
    setState(() {
      if (name.isEmpty) {
        name = 'Kardelen';
        buttonText = 'Name verstecken';
      } else {
        name = '';
        buttonText = 'Name anzeigen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleName,
          child: Text(buttonText),
        ),
      ],
    );
  }
}
