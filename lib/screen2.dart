import 'package:flutter/material.dart';

/*class Screen2 extends StatelessWidget {
  
  String value;
  Screen2({this.value});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 2",
        ),
      ),
      body: Center(
        child: Text(
          value,
        ),
      ),
    );
  }
}*/

class Screen2 extends StatefulWidget {
  
  String value;
  Screen2({Key key,@required this.value}) : super(key: key);
  
  @override
  _Screen2State createState() => _Screen2State(value);
}

class _Screen2State extends State<Screen2> {

  String value;
  _Screen2State(this.value);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 2",
        ),
      ),
      body: Center(
        child: Text(
          value,
        ),
      ),
    );
  }
}