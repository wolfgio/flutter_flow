import '../enums/inference_strategies.dart';
import '../enums/inference_type.dart';

class InferencePayload {
  final InferenceType type;
  final String model;
  final InferenceStrategy inferenceStrategy;

  InferencePayload({
    required this.type,
    required this.model,
    this.inferenceStrategy = InferenceStrategy.none,
  });
}
