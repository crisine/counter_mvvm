enum CountMode { plus, minus }

class CounterModel {
  int count;
  CountMode countMode;

  CounterModel({
    required this.count,
    required this.countMode,
  });
}
