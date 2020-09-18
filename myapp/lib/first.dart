import 'package:flutter/material.dart';
import 'second.dart';
import 'third_with_params.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  String fromThird;
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
    List<Widget> widgets = [
      FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Go to second"),
        key: Key("second"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute<Second>(builder: (BuildContext context) {
            return Second();
          }));
        },
      ),
      FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Go to third with param"),
        onPressed: () async {
          widget.fromThird =
              await Navigator.of(context).push(MaterialPageRoute<String>(builder: (BuildContext context) {
            return ThirdWithParams("Hello");
          }));
          setState(() {});
        },
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'You have pushed the button $_counter times',
        ),
      )
    ];

    if (widget.fromThird != null) {
      widgets.add(Text(widget.fromThird));
    }

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: widgets,
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
