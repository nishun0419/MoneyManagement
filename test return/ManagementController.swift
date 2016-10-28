//
//  ManagementController.swift
//  test return
//
//  Created by 二瀬征子 on 2016/10/26.
//  Copyright © 2016年 二瀬征子. All rights reserved.
//

import UIKit
import MBCircularProgressBar
class ManagementController: UIViewController {
    var price: Saving!

    @IBOutlet weak var Money: UILabel!
    @IBOutlet weak var Circuler: MBCircularProgressBarView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Money.text = String(price.money! - price.minute)
        Circuler.value = CGFloat(price.minute * 100 / price.money!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue:UIStoryboardSegue,sender: Any?){
        let viewController: CalcViewController = segue.destination as! CalcViewController
            viewController.price = price
    }
    
}
