import 'package:counter_mvvm/screen/counter/view/w_counter.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter MVVM'),
      ),
      body: const CounterWidget(),
    );
  }
}
