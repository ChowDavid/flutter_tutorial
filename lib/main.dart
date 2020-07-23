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
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text('Hello Drawer'),
              Text('Hello Drawer 2'),
              RaisedButton(onPressed: ()=>Navigator.pop(context),child: Text('Close'),),
            ],
          ),
        ),
      ),



        );
  }
}

