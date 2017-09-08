//
//  LocalData.swift
//  MyBankApp
//
//  Created by JustRealise on 03.09.17.
//  Copyright © 2017 JustRealise. All rights reserved.
//

import Foundation

class LocalData {
    static var balance = UserDefaults.standard.integer(forKey: "balance") 
}
