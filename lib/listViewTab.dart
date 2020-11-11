import 'dart:math';

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
        var r = Random.secure().nextInt(255);
        var g = Random.secure().nextInt(255);
        var b = Random.secure().nextInt(255);
        return Container(
          height: 30,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: new BoxDecoration(
              //color: Colors.blue[((index % 7) + 1) * 100],
              color: Color.fromARGB(150, r, g, b),
              borderRadius: new BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    color: Colors.black26,
                    offset: Offset(3, 3),
                    spreadRadius: 3)
              ]),
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
