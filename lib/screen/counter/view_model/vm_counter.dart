import 'package:counter_mvvm/screen/counter/model/m_counter.dart';
import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  late final CounterModel _counterModel; // CounterModel 은 갈아끼울 이유가 없으므로 final

  CounterViewModel() {
    _counterModel = CounterModel(count: 0, countMode: CountMode.plus);
  }

  int get count => _counterModel.count;
  CountMode get countMode => _counterModel.countMode;

  void changeCountMode(CountMode countMode) {
    _counterModel.countMode = countMode;
    notifyListeners(); // 상태 변경 알리기
  }

  void addCount() {
    switch (_counterModel.countMode) {
      case CountMode.plus:
        _counterModel.count += 1;
      case CountMode.minus:
        _counterModel.count -= 1;
    }
    notifyListeners(); // 상태 변경 알리기
  }
}
