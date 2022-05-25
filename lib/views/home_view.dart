import 'package:flutter/material.dart';
import 'dart:math';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const titleFont = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: const Color.fromARGB(55, 120, 119, 178),
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have been changed the color\n of picture this many times:',
              style: titleFont,
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.lightGreen),
            ),
            Icon(
              Icons.android,
              size: 300,
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Change color and increment',
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
