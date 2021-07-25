import 'package:flutter/material.dart';
import 'second.dart';
import 'third_with_params.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String fromThird = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: Text("Go to second"),
        key: Key("second"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute<Second>(builder: (BuildContext context) {
            return Second();
          }));
        },
      ),
      TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: Text("Go to third with param"),
        onPressed: () async {
          String? rv = await Navigator.of(context).push(MaterialPageRoute<String>(builder: (BuildContext context) {
            return ThirdWithParams("Hello");
          }));
          if (rv != null) {
            fromThird = rv;
          } else {
            fromThird = "";
          }
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

    widgets.add(Text(fromThird));

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
