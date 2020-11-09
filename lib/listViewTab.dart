import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewTab extends StatelessWidget {
  final List<String> listItems = [];

  Widget build(BuildContext context) {
    for (var i = 0; i < 20; i++) {
      listItems.add(WordPair.random().toString());
    }
    return new ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 30,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.blue[((index % 7) + 1) * 100],
          child: Center(
            child: Text(
              '${listItems[index]}',
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 1,
        color: Colors.white,
      ),
      itemCount: listItems.length,
    );
  }
}
