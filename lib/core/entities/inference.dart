import 'dart:ui';

class Inference {
  final String model;
  final double inferenceTime;
  final Rect? position;
  final double score;
  final String label;

  Inference({
    required this.model,
    required this.inferenceTime,
    this.position,
    required this.score,
    required this.label,
  });
}
