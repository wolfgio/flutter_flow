import 'flutter_flow_platform_interface.dart';

import 'core/entities/inference.dart';
import 'core/entities/inference_payload.dart';
import 'core/entities/model_download_payload.dart';
import 'core/entities/model_download_response.dart';

class FlutterFlow {
  Future<String?> getPlatformVersion() {
    return FlutterFlowPlatform.instance.getPlatformVersion();
  }

  Future<Iterable<Inference>> runInference(InferencePayload payload) {
    return FlutterFlowPlatform.instance.runInference(payload);
  }

  Future<ModelDownloadResponse> downloadModel(ModelDownloadPayload payload) {
    return FlutterFlowPlatform.instance.downloadModel(payload);
  }
}
