import 'package:flutter/material.dart';

class ImageTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: [
          //Image(image: AssetImage("images/tea.jpg")),
          Padding(
            padding: EdgeInsets.all(90),
            child: Image(
              image: AssetImage("images/tea.jpg"),
            ),
          ),
          Text("Morning Tea")
        ],
      ),
    );
  }
}
