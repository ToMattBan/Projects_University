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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
  var _color = Colors.black;
  String _pi = "0 não é par nem ímpar";

  void _incrementCounter() {
    setState(() {
      _pi = _counter % 2 == 0 ? "par" : "ímpar";
      _color = _pi == "par" ? Colors.blue : Colors.red;
      _counter++;
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
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _pi == '0 não é par nem ímpar'
                  ? '$_pi'
                  : 'Rapash, teu número é $_pi',
              style: TextStyle(color: _color),
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
