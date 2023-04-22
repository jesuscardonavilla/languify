import 'package:flutter/material.dart';
import 'package:languify/screens/translations.dart';
import 'text_screen.dart';


class DifficultyScreen extends StatefulWidget {
  final String language;

  const DifficultyScreen({Key? key, required this.language}) : super(key: key);

  @override
  _DifficultyScreenState createState() => _DifficultyScreenState();
}

class _DifficultyScreenState extends State<DifficultyScreen> {
  String _difficulty = '';

  void _handleDifficultyChange(String difficulty) {
    setState(() {
      _difficulty = difficulty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a difficulty'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(translate('beginnerDifficulty')),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(translate('intermediateDifficulty')),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(translate('advancedDifficulty')),
            ),
          ],
        ),
      ),
    );
  }
}

