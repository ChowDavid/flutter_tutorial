import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _value1 = false;
  var _value2 = false;

  void _onCheck1(bool value){ setState(()=> _value1 = value); }

  void _onCheck2(bool value){ setState(()=> _value2 = value); }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Name here'),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: ListView(
            shrinkWrap: true,
            children: [
              Checkbox(value: _value1, onChanged: _onCheck1),
              CheckboxListTile(
                  value: _value2,
                  onChanged: _onCheck2,
                  title: Text('Title'),
                  subtitle: Text('SubTitle'),
                  secondary: Icon(Icons.security),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.red,
              ),
              CheckboxListTile(
                value: _value2,
                onChanged: _onCheck2,
                title: Text('Title'),
                subtitle: Text('SubTitle'),
                secondary: Icon(Icons.security),
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.blue,
              ),
              CheckboxListTile(
                value: _value2,
                onChanged: _onCheck2,
                title: Text('Title'),
                subtitle: Text('SubTitle'),
                secondary: Icon(Icons.security),
                controlAffinity: ListTileControlAffinity.platform,
                activeColor: Colors.blue,
              ),
            ],
          ),
        )
      )
    );
  }
}
