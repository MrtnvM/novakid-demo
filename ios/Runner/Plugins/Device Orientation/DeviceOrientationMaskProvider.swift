//
//  SupportedDeviceOrientations.swift
//  Runner
//
//  Created by Максим Мартынов on 17.10.22.
//

import Foundation

protocol DeviceOrientationMaskProvider {
    var deviceOrientationMask: UIInterfaceOrientationMask { get }
}
