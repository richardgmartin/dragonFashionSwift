//
//  ViewController.swift
//  DragonFashionSwift
//
//  Created by Richard Martin on 2016-01-31.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    var dragons: [Dragon]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dragon1 = Dragon.init(dragonName: "Donald Trump", dragonYell: "It's Huge")
        let dragon2 = Dragon.init(dragonName: "Marco Rubio", dragonYell: "Faith in the Lord ....")
        let dragon3 = Dragon.init(dragonName: "Ted Cruz", dragonYell: "United States of Canada")
        let dragon4 = Dragon.init(dragonName: "Jeb Bush", dragonYell: "Jeb!")

        dragons = [dragon1, dragon2, dragon3, dragon4]
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dragons.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellID")!
        
        cell.textLabel!.text = dragons[indexPath.row].dragonName
        cell.detailTextLabel!.text = dragons[indexPath.row].dragonYell
        
        return cell
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dvc = segue.destinationViewController as! DisplayDragonYellViewController
        
        dvc.dragon = dragons[tableView.indexPathForSelectedRow!.row]
        
    }
}

