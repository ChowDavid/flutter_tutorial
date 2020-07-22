import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int value){ setState(()=> _value1 = value); }
  void _setValue2(int value){ setState(()=> _value2 = value); }

  Widget _getRadiosTile(){
    List<Widget> list = List();
    for (int i=0;i<3;i++){
      list.add(RadioListTile(
          value: i,
          groupValue: _value2,
          onChanged: _setValue2,
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Title'),
        subtitle: Text('SubTitle'),
        secondary: Icon(Icons.domain),
      ));
    }
    Column column = Column(children: list);
    return column;
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
          child: Center(
            child: Column(
              children: [
                Text('Value is $_value1 $_value2'),
                getRadios1(_value1,_setValue1),
                _getRadiosTile()
              ],
            ),
          )
        )
      )
    );
  }
}

Widget getRadios1(int _value1, dynamic function){
  List<Widget> list = List();
  for (int i=0;i<3;i++){
    list.add(Radio(value: i, groupValue: _value1, onChanged: function));
  }
  Column column = Column(children: list);
  return column;
}
