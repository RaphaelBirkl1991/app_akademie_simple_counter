import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_counter/counter_provider.dart';
import 'package:simple_counter/counter_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const CounterScreen(),
    ),
  );
}
