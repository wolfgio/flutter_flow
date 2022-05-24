import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

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
}
