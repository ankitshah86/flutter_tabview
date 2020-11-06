import 'package:flutter/cupertino.dart';

class TextScroll extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Container(
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
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
    );
  }
}
