import 'package:flutter_flow/core/entities/inference.dart';
import 'package:flutter_flow/core/entities/inference_payload.dart';
import 'package:flutter_flow/core/entities/model_download_payload.dart';
import 'package:flutter_flow/core/entities/model_download_response.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_flow_method_channel.dart';

abstract class FlutterFlowPlatform extends PlatformInterface {
  /// Constructs a FlutterFlowPlatform.
  FlutterFlowPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterFlowPlatform _instance = MethodChannelFlutterFlow();

  /// The default instance of [FlutterFlowPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterFlow].
  static FlutterFlowPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterFlowPlatform] when
  /// they register themselves.
  static set instance(FlutterFlowPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<Iterable<Inference>> runInference(InferencePayload payload) {
    throw UnimplementedError('runInference() has not been implemented');
  }

  Future<ModelDownloadResponse> downloadModel(ModelDownloadPayload payload) {
    throw UnimplementedError('downloadModel() has not been implemented');
  }
}
