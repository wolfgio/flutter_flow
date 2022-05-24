import 'dart:ui';

import 'package:flutter_flow/core/entities/inference.dart';
import 'package:flutter_flow/core/entities/inference_payload.dart';
import 'package:flutter_flow/core/entities/model_download_payload.dart';
import 'package:flutter_flow/core/entities/model_download_response.dart';

class ParseUtils {
  static Iterable<Inference> parseInferenceResponse(dynamic nativePayload) {
    final model = nativePayload['model'] as String;
    final inferenceTime = (nativePayload['inferenceTime'] as num).toDouble();
    final nativeInferences = nativePayload['inferences'] as List<Map<String, dynamic>>;

    return nativeInferences.map<Inference>((inference) {
      final left = (inference['left'] as num?)?.toDouble();
      final top = (inference['top'] as num?)?.toDouble();
      final right = (inference['right'] as num?)?.toDouble();
      final bottom = (inference['bottom'] as num?)?.toDouble();
      Rect? rect;

      if (left != null || top != null || right != null || bottom != null) {
        rect = Rect.fromLTRB(left!, top!, right!, bottom!);
      }

      return Inference(
        model: model,
        inferenceTime: inferenceTime,
        score: (inference['score'] as num).toDouble(),
        label: inference['label'] as String,
        position: rect,
      );
    });
  }

  static ModelDownloadResponse parseModelDownloadResponse(dynamic nativePayload) {
    return ModelDownloadResponse(
      name: nativePayload['name'] as String,
      downloadDate: DateTime.fromMillisecondsSinceEpoch(
        (nativePayload['downloadDate'] as num).toInt(),
      ),
      success: nativePayload['success'],
    );
  }

  static Map<String, dynamic> parseInferencePayload(InferencePayload payload) {
    return {
      'type': payload.type.string,
      'source': payload.source.string,
      'model': payload.model,
    };
  }

  static Map<String, dynamic> parseModelDownloadPayload(ModelDownloadPayload payload) {
    return {
      'model': payload.model,
      'strategy': payload.stategy.string,
    };
  }
}