import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Grandioso Countador e Parificador',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: MyHomePage(title: 'El Grandioso Countador e Parificador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _color = Colors.white;
  String _pi = "0 não é par nem ímpar";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _pi = _counter % 2 == 0 ? "PAR" : "ÍMPAR";
      _color = _pi == "PAR" ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nusha, sabe quantas vezes tu clicou no botão lá? Olha ae:',
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.5),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 38),
            ),
            Text(
              _counter == 0 ? '$_pi' : 'Rapash, teu número é:',
              textAlign: TextAlign.center,
              style: TextStyle(color: _color, height: 1.5),
            ),
            Text(
              _counter == 0 ? '' : '$_pi',
              style: TextStyle(color: _color, fontSize: 34),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Clicador',
        child: Icon(Icons.add),
      ),
    );
  }
}
