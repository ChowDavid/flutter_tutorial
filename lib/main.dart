import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _value1 = false;
  bool _value2 = false;

  void _onSwitch1(bool value){setState(()=>_value1 = value);}
  void _onSwitch2(bool value){setState(()=>_value2 = value);}



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
                Text('Value is $_value1 $_value2'),
                Switch(value: _value1, onChanged: _onSwitch1),
                SwitchListTile(value: _value2, onChanged: _onSwitch2,
                title: Text('Switch 2'),
                )
              ],
            ),
          )
        )
      )
    );
  }
}

