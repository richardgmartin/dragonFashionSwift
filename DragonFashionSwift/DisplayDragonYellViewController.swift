//
//  DisplayDragonYellViewController.swift
//  DragonFashionSwift
//
//  Created by Richard Martin on 2016-01-31.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

import UIKit

class DisplayDragonYellViewController: UIViewController {
    
    @IBOutlet weak var displayDragonYellLabel: UILabel!
    
    var dragon: Dragon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayDragonYellLabel.text = dragon.dragonYell
        
    }
    
    

}
