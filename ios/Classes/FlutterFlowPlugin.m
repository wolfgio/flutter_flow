#import "FlutterFlowPlugin.h"
#if __has_include(<flutter_flow/flutter_flow-Swift.h>)
#import <flutter_flow/flutter_flow-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_flow-Swift.h"
#endif

@implementation FlutterFlowPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterFlowPlugin registerWithRegistrar:registrar];
}
@end
