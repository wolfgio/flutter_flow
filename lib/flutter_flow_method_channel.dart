import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'core/entities/inference.dart';
import 'core/entities/inference_payload.dart';
import 'core/entities/model_download_payload.dart';
import 'core/entities/model_download_response.dart';
import 'core/utils/parse.dart';
import 'flutter_flow_platform_interface.dart';

/// An implementation of [FlutterFlowPlatform] that uses method channels.
class MethodChannelFlutterFlow extends FlutterFlowPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_flow');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<Iterable<Inference>> runInference(InferencePayload payload) async {
    final nativePayload = await methodChannel.invokeMethod<dynamic>(
      'runInference',
      ParseUtils.parseInferencePayload(payload),
    );

    return ParseUtils.parseInferenceResponse(nativePayload);
  }

  @override
  Future<ModelDownloadResponse> downloadModel(ModelDownloadPayload payload) async {
    final nativePayload = await methodChannel.invokeMethod<dynamic>(
      'downloadModel',
      ParseUtils.parseModelDownloadPayload(payload),
    );

    return ParseUtils.parseModelDownloadResponse(nativePayload);
  }
}
