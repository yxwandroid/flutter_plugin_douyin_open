#import "FlutterPluginDouyinOpenPlugin.h"
#if __has_include(<flutter_plugin_douyin_open/flutter_plugin_douyin_open-Swift.h>)
#import <flutter_plugin_douyin_open/flutter_plugin_douyin_open-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_plugin_douyin_open-Swift.h"
#endif

@implementation FlutterPluginDouyinOpenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginDouyinOpenPlugin registerWithRegistrar:registrar];
}

//+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
//  FlutterMethodChannel* channel = [FlutterMethodChannel
//      methodChannelWithName:@"flutter_plugin_douyin_open"
//            binaryMessenger:[registrar messenger]];
//    FlutterPluginDouyinOpenPlugin* instance = [[FlutterPluginDouyinOpenPlugin alloc] init];
//  [registrar addMethodCallDelegate:instance channel:channel];
//}
//
//- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
//  if ([@"getPlatformVersion" isEqualToString:call.method]) {
//    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
//  } else {
//    result(FlutterMethodNotImplemented);
//  }
//}

@end
