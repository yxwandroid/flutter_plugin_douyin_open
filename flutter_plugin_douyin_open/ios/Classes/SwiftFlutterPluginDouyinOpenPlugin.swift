import Flutter
import UIKit

public class SwiftFlutterPluginDouyinOpenPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_douyin_open", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginDouyinOpenPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
