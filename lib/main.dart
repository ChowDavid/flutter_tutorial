import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:async';


void main()=> runApp(MaterialApp(
  localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _value;
  void _add(){
    setState(() {
      _value++;
    });
  }
  void _sub(){
    setState(() {
      _value--;
    });
  }

  void _clear(){setState(() {
    _value = 0;
  });}


  @override
  void initState() {
    _value =0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Label text
          title: Text('Hello $_value'),
          centerTitle: true,
          ),
      persistentFooterButtons: [
        IconButton(icon: Icon(Icons.add), onPressed: _add, iconSize: 12,),
        IconButton(icon: Icon(Icons.remove), onPressed: _sub, color: Colors.red,),
        IconButton(icon: Icon(Icons.alarm), onPressed: _add,hoverColor: Colors.green,),
        IconButton(icon: Icon(Icons.android), onPressed: _sub, focusColor: Colors.blue,),
        IconButton(icon: Icon(Icons.web), onPressed: _add,highlightColor: Colors.amber,),
        IconButton(icon: Icon(Icons.clear), onPressed: _sub),
        IconButton(icon: Icon(Icons.domain), onPressed: _add),
      ],




        );
  }
}

