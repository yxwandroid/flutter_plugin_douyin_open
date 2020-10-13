import Flutter
import UIKit
import DouyinOpenSDK
public class SwiftFlutterPluginDouyinOpenPlugin:  FlutterPluginAppLifeCycleDelegate, FlutterPlugin{
    

 
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_douyin_open", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginDouyinOpenPlugin()
    registrar.addApplicationDelegate(instance)

    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    let objViewController =  UIApplication.shared.keyWindow?.rootViewController
    let request = DouyinOpenSDKAuthRequest()
    request.permissions =
        NSOrderedSet(objects: "user_info")
   
    request.send(objViewController!, complete: { resp in
      
        var alertString: String? = nil
        if resp.errCode.rawValue == 0 {
            alertString = "Author Success Code : \(resp.code), permission : \(resp.grantedPermissions)"
        } else {
            alertString = "Author failed code : \(NSNumber(value: resp.errCode.rawValue)), msg : \(resp.errString)"
        }
        print("wilson ---"+alertString!)
    })
    
    result("iOS " + UIDevice.current.systemVersion)
  }
    
    
    public override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [AnyHashable : Any] = [:]) -> Bool {
        print("didFinishLaunchingWithOptions")
        DouyinOpenSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
      return true
    }
    
    public override func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        print("open url")
//        UIApplicationOpenURLOptionsSourceApplicationKey
        if DouyinOpenSDKApplicationDelegate.sharedInstance().application(application, open: url, sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplication.OpenURLOptionsKey.annotation]) {
              return true
          }

          return false
    }
    public override func application(_ application: UIApplication, open url: URL, sourceApplication: String, annotation: Any) -> Bool {
        print("open sourceApplication")
        if DouyinOpenSDKApplicationDelegate.sharedInstance().application(application, open: url, sourceApplication: sourceApplication, annotation: annotation){
            return true
        }else{
            return false
        }
    }
    
    public override func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        print("open handleOpen")
        if DouyinOpenSDKApplicationDelegate.sharedInstance().application(application, open: url, sourceApplication: nil, annotation:""){
            return true
        }else{
            return false
        }
    }
    
}
