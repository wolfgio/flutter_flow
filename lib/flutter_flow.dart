import 'flutter_flow_platform_interface.dart';

class FlutterFlow {
  Future<String?> getPlatformVersion() {
    return FlutterFlowPlatform.instance.getPlatformVersion();
  }
}
