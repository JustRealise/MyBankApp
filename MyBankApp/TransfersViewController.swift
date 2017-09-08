//
//  TransfersViewController.swift
//  MyBankApp
//
//  Created by JustRealise on 03.09.17.
//  Copyright © 2017 JustRealise. All rights reserved.
//

import UIKit

class TransfersViewController: UIViewController {

    
    
    
    @IBOutlet weak var cardNumberTextField: UITextField!
    @IBOutlet weak var cardNumberStatusLabel: UILabel!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var moneyStatusLabel: UILabel!
    
    
    @IBAction func sendMoney(_ sender: UIButton) {
        
        if let moneyString = moneyTextField.text,
            doesntStartWithZero(moneyString),
            let money = Int(moneyString),
            amountOfMoneyIsCorrect(money){
            
            LocalData.balance -= money
            UserDefaults.standard.set(LocalData.balance, forKey: "balance")
            
        } else {
            print("Неверная сумма")
        }
    }
    
    func amountOfMoneyIsCorrect(_ money: Int) -> Bool {
        if money > 0 && money <= LocalData.balance {
            return true
        } else {
            return false
        }
    }
    
    func doesntStartWithZero(_ moneyString: String) -> Bool {
        if moneyString.characters.first == "0" {
            return false
        } else {
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
