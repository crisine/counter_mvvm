import 'package:flutter/material.dart';

class AppTextStyles {
  // private 생성자로 인스턴스화 방지
  AppTextStyles._();

  // 헤드라인용
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );

  // 본문용
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    height: 1.5,
  );
}
