import 'package:counter_mvvm/core/theme/app_text_styles.dart';
import 'package:counter_mvvm/screen/counter/view_model/vm_counter.dart';
import 'package:flutter/material.dart';

// 카운터 표시 위젯
class CounterWidget extends StatefulWidget {
  final CounterViewModel counterViewModel;
  const CounterWidget({super.key, required this.counterViewModel});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  void initState() {
    // viewModel 의 notifyListeners 호출하는 리스너
    widget.counterViewModel.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    widget.counterViewModel.dispose(); // 잊지 말고 dispose.
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
                  '${widget.counterViewModel.count} 회 눌림',
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
            onPressed: () => widget.counterViewModel.addCount(),
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
