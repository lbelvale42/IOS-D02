//
//  TableViewCell.swift
//  Death Note
//
//  Created by Lucas BELVALETTE on 10/5/16.
//  Copyright © 2016 Lucas BELVALETTE. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    
    var death: (String, String, String)? {
        didSet {
            if let d = death {
                nameLabel?.text = d.0
                dateLabel?.text = d.1
                describeLabel?.text = d.2
            }
        }
    }
    

}
