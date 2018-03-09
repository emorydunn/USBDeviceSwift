//
//  AppDelegate.swift
//  SerialDeviceSwift
//
//  Created by Artem Hruzd on 3/9/18.
//  Copyright © 2018 Artem Hruzd. All rights reserved.
//

import Cocoa
import USBDeviceSwift

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    //make sure that cfDeviceMonitor always exist
    let cfDeviceMonitor = SerialDeviceMonitor()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let cfDeviceDaemon = Thread(target: self.cfDeviceMonitor, selector:#selector(self.cfDeviceMonitor.start), object: nil)
        cfDeviceDaemon.start()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

