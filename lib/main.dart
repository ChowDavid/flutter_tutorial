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
      _value = message+' change';
    });
  }
  void _onSubmit([String message='']){
    setState(() {
      _value = message+' submit';
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
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(_value),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'HintText',
                    icon: Icon(Icons.email)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Number',
                    hintText: 'HintText',
                    icon: Icon(Icons.phone)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.number,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Date Time',
                    hintText: 'HintText',
                    icon: Icon(Icons.add_alert)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Mulit Line',
                    hintText: 'HintText',
                    icon: Icon(Icons.input)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.multiline,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'HintText',
                    icon: Icon(Icons.account_circle)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.name,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Street Address',
                    hintText: 'HintText',
                    icon: Icon(Icons.domain)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.streetAddress,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'text',
                    hintText: 'HintText',
                    icon: Icon(Icons.input)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
              ),
              TextField(
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'URL',
                    hintText: 'HintText',
                    icon: Icon(Icons.web)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.url,
              ),
              TextField(
                obscureText: true,
                onChanged: _onPress,
                onSubmitted: _onSubmit,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'HintText',
                    icon: Icon(Icons.security)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.visiblePassword,
              )
            ],
          ),
        )
      )
    );
  }
}
