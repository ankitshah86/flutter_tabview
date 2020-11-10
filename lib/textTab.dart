import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextScroll extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(25.3),
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          color: Color.fromARGB(255, 100, 200, 220),
          borderRadius: new BorderRadius.all(Radius.circular(25.0)),
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                color: Colors.black26,
                offset: Offset(4, 4),
                spreadRadius: 3)
          ]),
      child: new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Text(
          "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n" +
              "Scrollable Text\n",
          style: new TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
