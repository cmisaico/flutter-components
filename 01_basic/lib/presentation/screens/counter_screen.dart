import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCount',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.bold)),
            Text(
              'Click${clickCount == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCount++;
            });
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}


/*
class CounterScreen extends StatelessWidget {

  final int clickCount = 0;

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          centerTitle: true,
        ),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.bold)),
            Text(
              'Click',
              style: TextStyle(fontSize: 25),
            )
          ],
        )),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.plus_one),
        ));
  }
}

*/
