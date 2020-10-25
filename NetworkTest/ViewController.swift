//
//  ViewController.swift
//  NetworkTest
//
//  Created by YANBO JIANG on 10/23/20.
//

import UIKit
import NetworkExtension


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let getwifi = GetWifiList()
        getwifi.getWifiList()
        
        

//        var options: [String: NSObject] = [kNEHotspotHelperOptionDisplayName:"Try" as NSObject]
//
//        let returnType = NEHotspotHelper.register(options: options, queue: DispatchQueue.main, handler: {(_ cmd: NEHotspotHelperCommand) -> Void in
//                    NSLog("Returned", "")
//                    print(cmd)
//                    if cmd.commandType == NEHotspotHelperCommandType.evaluate || cmd.commandType == NEHotspotHelperCommandType.filterScanList {
//                        if cmd.networkList != nil {
//
//                            for network: NEHotspotNetwork in cmd.networkList! {
//                                if (network.ssid != ""){
//                                    print(network.ssid)
//                                    print(network.signalStrength)
//                                }else{
//                                    print("null")
//                                }
//                            }
//
//                        }
//
//
//
//                    }
//                })
    }
    
//    var queue: DispatchQueue = DispatchQueue(__label: "com.leopardpan.HotspotHelper", attr: nil)

    
}

