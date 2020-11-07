import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewTab extends StatelessWidget {
  final List<String> listItems = [
    "List Item 1",
    "List Item 2",
    "List Item 3",
    "List Item 4",
    "List Item 5",
    "List Item 6",
    "List Item 7",
    "List Item 8",
    "List Item 9",
    "List Item 10",
    "List Item 11",
    "List Item 12",
    "List Item 13",
    "List Item 14",
    "List Item 15",
    "List Item 16",
    "List Item 17",
    "List Item 18",
    "List Item 19",
    "List Item 20",
  ];

  Widget build(BuildContext context) {
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

    /* return new ListView(
      children: <Widget>[
        Container(
          height: 30,
          margin: EdgeInsets.all(10),
          color: Colors.blue[200],
          child: const Center(
            child: Text("List Item 1"),
          ),
        ),
      ],
    );*/
  }
}
