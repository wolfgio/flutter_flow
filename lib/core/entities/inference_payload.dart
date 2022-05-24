import '../enums/inference_strategies.dart';
import '../enums/inference_type.dart';
import '../enums/model_source.dart';

class InferencePayload {
  final InferenceType type;
  final ModelSource source;
  final String model;
  final InferenceStrategy inferenceStrategy;

  InferencePayload({
    required this.type,
    required this.source,
    required this.model,
    this.inferenceStrategy = InferenceStrategy.none,
  });
}
