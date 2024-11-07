import 'package:counter_mvvm/core/theme/app_text_styles.dart';
import 'package:counter_mvvm/screen/counter/view_model/vm_counter.dart';
import 'package:flutter/material.dart';

// 카운터 표시 위젯
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  final CounterViewModel _counterViewModel = CounterViewModel();

  @override
  void initState() {
    // viewModel 의 notifyListeners 호출하는 리스너
    _counterViewModel.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _counterViewModel.dispose(); // 잊지 말고 dispose.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  '${_counterViewModel.count} 회 눌림',
                  style: AppTextStyles.headlineLarge,
                ),
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.only(bottom: 32, right: 32),
          child: FloatingActionButton(
            onPressed: () => _counterViewModel.addCount(),
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
