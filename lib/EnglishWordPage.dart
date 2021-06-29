import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class EnglishWordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}
