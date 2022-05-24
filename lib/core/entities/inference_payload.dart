import 'package:flutter_flow/core/enums/inference_type.dart';
import 'package:flutter_flow/core/enums/model_source.dart';

class InferencePayload {
  final InferenceType type;
  final ModelSource source;
  final String model;

  InferencePayload({
    required this.type,
    required this.source,
    required this.model,
  });
}
