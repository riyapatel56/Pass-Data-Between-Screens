import 'package:flutter/material.dart';
import 'package:sharescreen/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning",
      theme: ThemeData(
      primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String value;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 1",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text) {
              value = text;
            },
          ),
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Screen2(value : value),
              ));
            },
            child: Text(
              "Switch",
            ),
          ),
        ],
      ),
    );
  }
}