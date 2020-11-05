import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Tab_A",
                ),
                Tab(
                  text: "Tab_B",
                ),
                Tab(
                  text: "Tab_C",
                ),
                Tab(
                  text: "Tab_D",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SurveyPage(),
              ImageTab(),
              Icon(Icons.accessible),
              Icon(Icons.foundation),
            ],
          ),
        ),
      ),
    );
  }
}

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
