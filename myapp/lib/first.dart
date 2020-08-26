import 'package:flutter/material.dart';
import 'second.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlatButton button = FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Go to second"),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute<Second>(builder: (BuildContext context) {
          return Second();
        }));
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            button,
            Text(
              'You have pushed the button $_counter times',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
