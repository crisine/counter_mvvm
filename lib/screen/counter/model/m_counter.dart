enum CountMode { plus, minus }

class CounterModel {
  // 외부에서 실수로라도 변경할 수 있는 여지를 배제
  final int count;
  final CountMode countMode;

  const CounterModel({
    required this.count,
    required this.countMode,
  });

  // 새로운 상태를 반환하도록 함
  CounterModel copyWith({
    int? count,
    CountMode? countMode,
  }) {
    return CounterModel(
      count: count ?? this.count,
      countMode: countMode ?? this.countMode,
    );
  }
}
