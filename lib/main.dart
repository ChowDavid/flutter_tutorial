import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<BottomNavigationBarItem> _items;
  int _index;
  String _value;


  @override
  void initState() {
    _value='';
    _index=0;
    _items=new List<BottomNavigationBarItem>();
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text('Alarm')));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.weekend),title: Text('WeekEnd')));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.people),title: Text('People')));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Text('$_value'),
      persistentFooterButtons: <Widget>[
        IconButton(icon: Icon(Icons.add),),
        IconButton(icon: Icon(Icons.remove),),
        IconButton(icon: Icon(Icons.close),),
        IconButton(icon: Icon(Icons.email),),
      ],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        backgroundColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.blue[100],
        currentIndex: _index,
        onTap: (item){
          setState(() {
            _index = item;
            _value='Current value is $_index';
          });
        },
      )


    );
  }
}


