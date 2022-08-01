import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Counter Application',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  int _counter = 0;
  void _incrementCount() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCount() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incremental Demo'),
        backgroundColor: Colors.purple.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    FloatingActionButton(
                      child: Icon(
                        Icons.add,
                        color: Colors.purple,
                      ),
                      onPressed: _incrementCount,
                    ),
                    Text('count'),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    FloatingActionButton(
                      child: Icon(
                        Icons.remove,
                        color: Colors.purple,
                      ),
                      onPressed: _decrementCount,
                    ),
                    Text('deduct'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
