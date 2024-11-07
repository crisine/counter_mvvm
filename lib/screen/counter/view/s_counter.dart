import 'package:counter_mvvm/screen/counter/view/w_counter.dart';
import 'package:counter_mvvm/screen/counter/view_model/vm_counter.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final counterViewModel = CounterViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter MVVM')),
      ),
      body: CounterWidget(
        counterViewModel: counterViewModel,
      ),
    );
  }
}
