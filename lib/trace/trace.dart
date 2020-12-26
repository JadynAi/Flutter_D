import 'package:Flutter_D/trace/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TraceWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TracePage(title: "saddad",));
  }
}

class TracePage extends StatefulWidget {
  final String title;
  
  TracePage({Key key, this.title}) : super(key: key);

  @override
  _TraceState createState() => new _TraceState();
}

class _TraceState extends State<TracePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
