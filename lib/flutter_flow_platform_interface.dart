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
}
