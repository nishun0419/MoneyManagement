 //
//  TitleViewController.swift
//  test return
//
//  Created by 二瀬征子 on 2016/10/28.
//  Copyright © 2016年 二瀬征子. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goManagement"{
            let userDefaults = UserDefaults.standard
            
                 var price = Saving(kane: userDefaults.integer(forKey:"money"))
                price.minute = userDefaults.integer(forKey: "minute")
            let viewController: ManagementController = segue.destination as! ManagementController
            viewController.price = price
        
        }
        else if segue.identifier == "goset"{
            
    }
}
}
