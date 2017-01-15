//
//  ViewController.swift
//  NetworkTools
//
//  Created by LustXcc on 15/01/2017.
//  Copyright © 2017 LustXcc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        NetworkTool.shareInstance.request(requestType: .GET, url: "http://httpbin.org/get", parameters: ["name" : "ket"]) { (result, error) in
            if error != nil {
                print(error!)
                return
            }
            print(result!)
        }
    }

}

