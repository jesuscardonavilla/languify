import 'dart:js';

import 'package:flutter/material.dart';
import 'package:languify/screens/text_screen.dart';
import 'package:languify/screens/translations.dart';

class DifficultyPageScreen extends StatelessWidget {
  final String title;
  final List<String> difficulties;
  final Function(String) onDifficultySelected;

  DifficultyPageScreen({
    required this.title,
    required this.difficulties,
    required this.onDifficultySelected,
  });

  Widget _buildDifficultyButtons() {
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(Translations.of(context)!.beginner),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(Translations.of(context)!.intermediate),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(Translations.of(context)!.advanced),
        ),
      ],
    ),



  Widget _buildDifficultyList() {
    return Column(
      children: difficulties.map((difficulty) => _buildDifficultyButton(difficulty)).toList(),
    );
  }

  Widget difficultyScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: _buildDifficultyList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return difficultyScreen(context);
  }
}
