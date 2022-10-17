//
//  DeviceOrientationPlugin.swift
//  Runner
//
//  Created by Максим Мартынов on 17.10.22.
//

import Foundation

class DeviceOrientationPlugin : Plugin, DeviceOrientationMaskProvider {
    private(set) var deviceOrientationMask = UIInterfaceOrientationMask.all
    
    private let methodChannel: FlutterMethodChannel
    
    private let deviceOrientationMaskDictionary: [Int: UIInterfaceOrientationMask] = [
        0: UIInterfaceOrientationMask.portrait,
        1: UIInterfaceOrientationMask.landscapeLeft,
        2: UIInterfaceOrientationMask.landscapeRight,
        3: UIInterfaceOrientationMask.portraitUpsideDown,
        4: UIInterfaceOrientationMask.landscape,
        5: UIInterfaceOrientationMask.all,
        6: UIInterfaceOrientationMask.allButUpsideDown,
    ]
    
    init(binaryMessenger: FlutterBinaryMessenger) {
        methodChannel = FlutterMethodChannel(
            name: "novakid.com/device-orientation",
            binaryMessenger: binaryMessenger
        )
    }
    
    func activate() {
        methodChannel.setMethodCallHandler({ [weak self] (methodCall, setFlutterResult) in
            let arguments = methodCall.arguments as? [String: Any]
            
            switch methodCall.method {
            case "setOrientationMask":
                if let arguments = arguments {
                    let maskIndex = arguments["orientationMask"] as! Int
                    self?.setDeviceOrientationMask(maskIndex)
                    setFlutterResult(true)
                } else {
                    setFlutterResult(false)
                }
    
                break
                
            default:
                break
            }
        })
    }
    
    func deactivate() {
        methodChannel.setMethodCallHandler(nil)
    }
    
    private func setDeviceOrientationMask(_ index: Int) {
        let newOrientationMask = deviceOrientationMaskDictionary[index]
        
        if let newOrientationMask = newOrientationMask {
            deviceOrientationMask = newOrientationMask
            
            let setOrientation = { (orientation: UIInterfaceOrientation) in
                UIDevice.current.setValue(
                    orientation.rawValue,
                    forKey: "orientation"
                )
            }
            
            switch newOrientationMask {
            case .portrait:
                setOrientation(.portrait)
                break
            case .landscapeRight:
                setOrientation(.landscapeRight)
                break
            case .landscapeLeft:
                setOrientation(.landscapeLeft)
                break
            case .landscape:
                setOrientation(.landscapeRight)
                break
            case .portraitUpsideDown:
                setOrientation(.portraitUpsideDown)
                break
            default:
                break
            }
            
            UIViewController.attemptRotationToDeviceOrientation()
        }
    }
}
