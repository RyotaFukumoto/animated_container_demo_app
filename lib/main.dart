import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyStateWidget());
  }
}

class MyStateWidget extends StatefulWidget {
  const MyStateWidget({Key? key}) : super(key: key);

  @override
  _MyStateWidgetState createState() => _MyStateWidgetState();
}

class _MyStateWidgetState extends State<MyStateWidget> {
  bool selected = false;
  Alignment _alg = Alignment.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
        centerTitle: true,
      ),
      body: Container(
        width:500.0,
        height: 500.0,
        color: Colors.blue,
        child: AnimatedContainer(
          alignment:_alg,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Container(
              width:  100.0,
              height: 100.0,
              color:  Colors.red,
              child: const FlutterLogo(size: 75)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            double x = Random().nextInt(3).toDouble()-1;
            double y = Random().nextInt(3).toDouble()-1;
            _alg = Alignment(x, y);
          });
          },
        child: const Icon(Icons.flutter_dash),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
