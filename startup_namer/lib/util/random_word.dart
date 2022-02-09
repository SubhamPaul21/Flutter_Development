import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _wordSuggestions = <WordPair>[];
  final _savedSuggestions = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(WordPair wordPair) {
    final _alreadySaved = _savedSuggestions.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red : null,
        semanticLabel: _alreadySaved ? 'Remove from saved' : 'Save',
      ),
      onTap: () {
        setState(() {
          if (_alreadySaved) {
            _savedSuggestions.remove(wordPair);
          } else {
            _savedSuggestions.add(wordPair);
          }
        });
      },
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

  void _pushSaved() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      final _tiles = _savedSuggestions.map((pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });

      final _divided = _tiles.isNotEmpty
          ? ListTile.divideTiles(
              tiles: _tiles,
              context: context,
            ).toList()
          : <Widget>[];

      return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Suggestions'),
        ),
        body: ListView(children: _divided),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Name Generator"),
        actions: [
          IconButton(
            onPressed: _pushSaved,
            icon: const Icon(Icons.list),
            tooltip: 'Saved Suggestions',
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}
