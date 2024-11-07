import 'package:counter_mvvm/screen/counter/model/m_counter.dart';
import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  late CounterModel _counterModel; // late final 로 주게 되면 새 상태 주입 불가해짐.

  CounterViewModel()
      : _counterModel = const CounterModel(count: 0, countMode: CountMode.plus);

  int get count => _counterModel.count;
  CountMode get countMode => _counterModel.countMode;

  void changeCountMode(CountMode countMode) {
    _counterModel = _counterModel.copyWith(countMode: countMode);
    notifyListeners(); // 상태 변경 알리기
  }

  void addCount() {
    final newCount = _counterModel.countMode == CountMode.plus
        ? _counterModel.count + 1
        : _counterModel.count - 1;

    // 새로운 상태를 주입함으로서 Model을 변경
    _counterModel = _counterModel.copyWith(count: newCount);
    notifyListeners(); // 상태 변경 알리기
  }
}
