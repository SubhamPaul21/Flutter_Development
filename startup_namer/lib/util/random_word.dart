import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _wordSuggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(WordPair wordPair) {
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        // if current index is odd, create a divider i.e. adding divider in each row
        if (i.isOdd) {
          return const Divider();
        }
        final index = i ~/ 2;
        // if current index divided by 2 gives an integer which is greater than the number of items in word suggestion list, generate 10 more words and store in the word suggestion list
        if (index >= _wordSuggestions.length) {
          _wordSuggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_wordSuggestions[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Name Generator"),
      ),
      body: _buildSuggestions(),
    );
  }
}
