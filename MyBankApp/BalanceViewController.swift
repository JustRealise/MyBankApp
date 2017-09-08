//
//  BalanceViewController.swift
//  MyBankApp
//
//  Created by JustRealise on 03.09.17.
//  Copyright © 2017 JustRealise. All rights reserved.
//

import UIKit

class BalanceViewController: UIViewController {

    
    
    @IBOutlet weak var balanceTextField: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateUI()
    }
    
    
    
    
    @IBAction func addSomeMoney(_ sender: UIButton) {
        LocalData.balance += 50_000 // то же самое что 50000
        UserDefaults.standard.set(LocalData.balance, forKey: "balance")
        updateUI()
    }
    
    func updateUI() {
        balanceTextField.text = "\(LocalData.balance) руб."
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
