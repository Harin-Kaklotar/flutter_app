import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My app",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello world";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home page"),
      ),
      body: _bodyWidget(),
    );
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText, style: new TextStyle(fontSize: 22.0),),
            new RaisedButton(
              child: new Text(
                "Click",
                style: new TextStyle(color: Colors.white),
              ),
              onPressed: _changeText,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Welcome to flutter";
      } else {
        myText = "Hello world";
      }
    });
  }
}
