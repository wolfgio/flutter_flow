import 'package:flutter_flow/core/entities/model_download_response.dart';
import 'package:flutter_flow/core/entities/model_download_payload.dart';
import 'package:flutter_flow/core/entities/inference_payload.dart';
import 'package:flutter_flow/core/entities/inference.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_flow/flutter_flow.dart';
import 'package:flutter_flow/flutter_flow_platform_interface.dart';
import 'package:flutter_flow/flutter_flow_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterFlowPlatform with MockPlatformInterfaceMixin implements FlutterFlowPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<ModelDownloadResponse> downloadModel(ModelDownloadPayload payload) {
    // TODO: implement downloadModel
    throw UnimplementedError();
  }

  @override
  Future<Iterable<Inference>> runInference(InferencePayload payload) {
    // TODO: implement runInference
    throw UnimplementedError();
  }
}

void main() {
  final FlutterFlowPlatform initialPlatform = FlutterFlowPlatform.instance;

  test('$MethodChannelFlutterFlow is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterFlow>());
  });

  test('getPlatformVersion', () async {
    FlutterFlow flutterFlowPlugin = FlutterFlow();
    MockFlutterFlowPlatform fakePlatform = MockFlutterFlowPlatform();
    FlutterFlowPlatform.instance = fakePlatform;

    expect(await flutterFlowPlugin.getPlatformVersion(), '42');
  });
}
