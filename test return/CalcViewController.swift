//
//  CalcViewController.swift
//  test return
//
//  Created by 二瀬征子 on 2016/10/28.
//  Copyright © 2016年 二瀬征子. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    @IBOutlet weak var priceField: UITextField!
    var price :Saving!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tap7Button(_ sender: AnyObject) {
        let value = priceField.text! + "7"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap8Button(_ sender: AnyObject) {
        let value = priceField.text! + "8"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap9Button(_ sender: AnyObject) {
        let value = priceField.text! + "9"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap4Button(_ sender: AnyObject) {
        let value = priceField.text! + "4"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
        
    }
    
    @IBAction func tap5Button(_ sender: AnyObject) {
        let value = priceField.text! + "5"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap6Button(_ sender: AnyObject) {
        let value = priceField.text! + "6"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap1Button(_ sender: AnyObject) {
        let value = priceField.text! + "1"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap2Button(_ sender: AnyObject) {
        let value = priceField.text! + "2"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap3Button(_ sender: AnyObject) {
        let value = priceField.text! + "3"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap0Button(_ sender: AnyObject) {
        let value = priceField.text! + "0"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap00Button(_ sender: AnyObject) {
        let value = priceField.text! + "00"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
        
    }
    
    @IBAction func tapClearButton(_ sender: AnyObject) {
        priceField.text! = "0"
    }
    
    
    override func prepare(for segue:UIStoryboardSegue,sender: Any?){
        let viewController: ManagementController = segue.destination as! ManagementController
        if let kin = Int(priceField.text!){
            price.minute = price.minute + kin
           viewController.price = price
        }
    }
}
