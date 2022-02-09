import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final name = 'Subham';
  final String text;
  final AnimationController animationController;

  const ChatMessage({
    Key? key,
    required this.text,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
      axisAlignment: 0.0, // NEW
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //color: Colors.black,
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                child: Text(name[0]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(text),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
