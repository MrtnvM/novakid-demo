import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private var plugins: [Plugin] = []
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        
        activatePlugins()
      
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func activatePlugins() {
        let controller: NovakidFlutterViewController = window?.rootViewController as! NovakidFlutterViewController
        let binaryMessenger = controller.binaryMessenger
      
        let deviceOrientationPlugin = DeviceOrientationPlugin(
            binaryMessenger: binaryMessenger
        )
        plugins.append(deviceOrientationPlugin)
        controller.deviceOrientationMaskProvider = deviceOrientationPlugin
        
        plugins.forEach({ plugin in plugin.activate() })
    }
}
