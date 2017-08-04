//
//  ViewController.swift
//  Pear
//
//  Created by Michael Sanders on 8/3/17.
//  Copyright © 2017 Michael Sanders. All rights reserved.
//

import Alamofire
import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        SessionManager.default.request("/").validate().responseJSON { response in
            switch response.result {
                case let .success(value):
                    print("Result: \(value)")
                case let .failure(error):
                    print("😵 uh-oh, something went wrong! \(error)")
            }
        }
    }
}

