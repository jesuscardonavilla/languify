import 'package:flutter/material.dart';
import 'package:languify/screens/translations.dart';

class TextScreen extends StatelessWidget {
  final String text;

  const TextScreen({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
