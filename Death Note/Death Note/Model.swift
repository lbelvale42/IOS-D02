//
//  Model.swift
//  Death Note
//
//  Created by Lucas BELVALETTE on 10/5/16.
//  Copyright © 2016 Lucas BELVALETTE. All rights reserved.
//

import Foundation

class Data {
    var deaths : [(String, String, String)] = [
        ("nbrizini", "11-10-2016 08:00 PM", "Faut il vraiment le preciser ? "),
        ("nbouliol", "9-10-2016 10:00 PM", "Sale placage au Foot US"),
        ("cmarin", "5-11-2016 07:00 PM", "Tuer par le PDG d'Uber Eats")
    ]
    
    init () {
    }
    
    func addDeath (_ death: (name: String, date: String, describe: String)) {
        deaths.append(death)
    }
}
