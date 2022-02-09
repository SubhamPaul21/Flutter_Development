import 'package:flutter/material.dart';

class DiaryView extends StatefulWidget {
  const DiaryView({Key? key}) : super(key: key);

  @override
  _DiaryViewState createState() => _DiaryViewState();
}

class _DiaryViewState extends State<DiaryView> {
  @override
  void initState() {
    super.initState();
    //DiaryDatabase
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "My Personal Diary",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          elevation: 50,
          primary: Colors.blue[700],
        ),
      ),
      body: const Center(
        child: Text("Diary List"),
      ),
      backgroundColor: Colors.amber[200],
    );
  }
}
