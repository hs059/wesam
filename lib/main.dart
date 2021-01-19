import 'package:flutter/material.dart';
import 'package:wessam/firstScreen.dart';
import 'package:wessam/secondScreen.dart';

import 'ThirdScreen.dart';
import 'fourthScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        backgroundColor: Colors.white,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  kNavigatorPush(BuildContext context,Widget route ){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => route,
        ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(      backgroundColor: Colors.white,

      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: () => kNavigatorPush(context, FirstScreen()),),
            RaisedButton(onPressed: () => kNavigatorPush(context, SecondScreen()),),
            RaisedButton(onPressed: () => kNavigatorPush(context, ThirdScreen()),),
            RaisedButton(onPressed: () => kNavigatorPush(context, FourthScreen()),),

          ],
        ),
      ),

    );
  }
}
