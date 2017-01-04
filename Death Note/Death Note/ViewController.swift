//
//  ViewController.swift
//  Death Note
//
//  Created by Lucas BELVALETTE on 10/5/16.
//  Copyright © 2016 Lucas BELVALETTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    var data: Data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clearColor()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }
    
    @IBAction func unWindSegue(segue : UIStoryboardSegue) {
        data.addDeath(ret!)
        tableView.reloadData()
    }
    
    var ret : (String, String, String)?
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        cell.backgroundColor = UIColor.init(patternImage: UIImage(named: "background")!)
        

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.deaths.count
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 140.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("deathCell") as! TableViewCell
        cell.death = data.deaths[indexPath.row]
        return cell
    }


}

