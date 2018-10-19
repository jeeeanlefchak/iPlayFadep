//
//  PersistenceManager.swift
//  iPlayFadep
//
//  Created by fadep on 06/10/18.
//  Copyright © 2018 fadep. All rights reserved.
//

import UIKit

class PersistenceManager: NSObject {
    
    class func save(nome:String){
        let defaults = UserDefaults.standard
        defaults.set(nome, forKey: "nome")
    }
    
    class func getNome()-> String{
        let defaults = UserDefaults.standard
        let name = defaults.string(forKey: "nome")
        return name ?? ""
    }

}
