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
          titleSpacing: 10,
          title: Text('Hello $_value'),
          centerTitle: true,



          actionsIconTheme: IconThemeData(color: Colors.blue,opacity: 0.9),
          actions: [
            IconButton(icon: Icon(Icons.add), onPressed: _add,iconSize: 30,),
            IconButton(icon: Icon(Icons.remove), onPressed: _sub,iconSize: 30,)
          ],
          automaticallyImplyLeading: false,


          //leading icon
          iconTheme: IconThemeData(color: Colors.green,opacity: 0.9),
          leading: IconButton(onPressed: _clear, icon: Icon(Icons.clear), iconSize: 50,),

          //overall appBar
          elevation: 0,
          backgroundColor: Colors.red,


          toolbarOpacity: 0.9,
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 5,color: Colors.amberAccent, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30)),

          ),

        );
  }
}

