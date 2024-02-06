import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_counter/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<CounterProvider>(
                builder: (context, counterProvider, _) {
                  return Text(
                    'Counter: ${counterProvider.counter}',
                    style: const TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  );
                },
              ),
              FloatingActionButton(
                splashColor: Colors.blueGrey,
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false).count();
                },
                child: const Icon(Icons.add_outlined),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
