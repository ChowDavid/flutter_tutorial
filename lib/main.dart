import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _value ='Hello World';

  void _onPress([String message='']){
    setState(() {
      _value = 'Pressed '+message;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Name here'),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text(_value),
              //RaisedButton(onPressed: ()=>_onPress('RaisedButton'), child: Text('Click Me')),
              IconButton(onPressed: _onPress,icon: Icon(Icons.access_alarm)),

            ],
          ),
        )
      )
    );
  }
}
