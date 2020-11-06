import 'package:flutter/material.dart';

class SurveyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(children: <Widget>[
        Container(
          child: Text(
            "This is a survey question This is a survey question This is a survey question This is a survey question This is a survey question This is a survey question?",
          ),
          padding: const EdgeInsets.all(20.0),
        ),
        ListTile(
          title: const Text("option A"),
          leading: Radio(
            value: const Text("A"),
            groupValue: null,
            onChanged: null,
          ),
        ),
        ListTile(
          title: const Text("option B"),
          leading: Radio(
            value: const Text("B"),
            groupValue: null,
            onChanged: null,
          ),
        ),
        ListTile(
          title: const Text("option C"),
          leading: Radio(
            value: const Text("C"),
            groupValue: null,
            onChanged: null,
          ),
        )
      ]),
    );
  }
}
