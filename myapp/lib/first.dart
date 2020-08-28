import 'package:flutter/material.dart';
import 'second.dart';
import 'third_with_params.dart';

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

    FlatButton buttonWithParam = FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Go to third with param"),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute<ThirdWithParams>(builder: (BuildContext context) {
          return ThirdWithParams("Hello");
        }));
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            button,
            buttonWithParam,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You have pushed the button $_counter times',
              ),
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
