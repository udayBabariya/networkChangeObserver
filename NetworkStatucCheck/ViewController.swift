//
//  ViewController.swift
//  NetworkStatucCheck
//
//  Created by Uday on 01/02/21.
//

import UIKit
import Network

class ViewController: UIViewController {

    let monitor = NWPathMonitor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monitor.pathUpdateHandler = { path in
            
            if path.status == .satisfied{
                print("Connected\n")
            }else{
                print("NOT Connected\n")
            }
        }
        
        let queue = DispatchQueue(label: "Monitor")
        monitor.start(queue: queue)
    }
}

