import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter'),),
      ),
      body: Center(
        heightFactor: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {
              setState(() {
                _counter--;
              });
            }, icon: Icon(Icons.remove_circle)),
            Text('$_counter', style: TextStyle(fontSize: 20),),
            IconButton(onPressed: () {
              setState(() {
                _counter++;
              });
            }, icon: Icon(Icons.add_circle))
          ],
        ),
      ),
    );
  }
}

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Spacing'),)
        ),
        body: Row(
          children: [
            Expanded(
                child: Container(
                    color: Colors.blue)),
            Expanded(
                child: Container(
                  color: Colors.white,
                )),
            Expanded(
                child: Container(
                  color: Colors.blueGrey,
                ))
          ],
        )
    );
  }
}


