//
//  NovakidFlutterViewController.swift
//  Runner
//
//  Created by Максим Мартынов on 17.10.22.
//

import Flutter

class NovakidFlutterViewController : FlutterViewController {
    var deviceOrientationMaskProvider: DeviceOrientationMaskProvider?
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return deviceOrientationMaskProvider?.deviceOrientationMask ?? UIInterfaceOrientationMask.all
    }
}
