import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double _value=0;

  _setValue(value){setState(() => _value = value);}

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Name here'),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Text('Value is ${(_value*100).round()}'),
                Slider(value: _value, onChanged: _setValue),
              ],
            ),
          )
        )
      )
    );
  }
}

