import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

enum options { A, B, C }

class _SurveyPageState extends State<SurveyPage> {
  options _myoption = options.A;
  void _optionSelected(options option) {
    setState(() {
      _myoption = option;
      print("Option selected " + option.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(20),
      child: new Column(
        children: <Widget>[
          Container(
            child: Text(
              "This is a survey question This is a survey question This is a survey question This is a survey question This is a survey question This is a survey question?",
            ),
            padding: const EdgeInsets.all(20.0),
          ),
          ListTile(
            title: const Text("option A"),
            leading: Radio(
              value: options.A,
              autofocus: true,
              groupValue: _myoption,
              onChanged: _optionSelected,
            ),
          ),
          ListTile(
            title: const Text("option B"),
            leading: Radio(
              value: options.B,
              groupValue: _myoption,
              onChanged: _optionSelected,
            ),
          ),
          ListTile(
            title: const Text("option C"),
            leading: Radio(
              value: options.C,
              groupValue: _myoption,
              onChanged: _optionSelected,
            ),
          ),
          RaisedButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: "Flutter Tabview",
                applicationVersion: "0.0.1",
                applicationLegalese: "This is a boilerplate flutter tabview",
              );
            },
            textColor: Colors.white,
            padding: EdgeInsets.all(0.0),
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blue,
                    Colors.green,
                  ],
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: const Text(
                "About",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
