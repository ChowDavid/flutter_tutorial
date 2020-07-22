import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:async';


void main()=> runApp(MaterialApp(
  localizationsDelegates: [
    // ... app-specific localization delegate[s] here
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

  DateTime _date = DateTime.now();

  Future<void> _selectDate()  async{

      DateTime selected = await showDatePicker(
          locale:  Locale("zh","CN"),
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2016),
          lastDate: DateTime.now().add(Duration(days:365)));
      print('Awaiting complete');
      setState(() {
        print('Refresh page');
        _date = selected;
      });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Name here'),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Text('Selected Date is ${_date}'),
                RaisedButton(onPressed:_selectDate,child: Text('Selected Date'),)
              ],
            ),
          )
        )
      );
  }
}

