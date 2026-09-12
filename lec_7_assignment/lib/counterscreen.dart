import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Starting at 3 to match the image
  int _counter = 3;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'تغيير الحالة (Stateful)',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _decrement,
              icon: const Icon(Icons.remove_circle),
              color: Colors.red,
              iconSize: 40,
            ),
            const SizedBox(width: 24),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 24),
            IconButton(
              onPressed: _increment,
              icon: const Icon(Icons.add_circle),
              color: Colors.green,
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}