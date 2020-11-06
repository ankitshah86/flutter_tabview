import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './surveyTab.dart';
import './imageTab.dart';

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
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
