//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ann Marie Seyerlein on 4/8/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    // Needed to create an Outlet of which to be able to change the Emoji. The object being changed was the big Emoji in the center.
    @IBOutlet weak var emojiLabel: UILabel!
    
    // Just to have a starting point. ALSO LINKED WITHIN THE MAIN VIEW CONTROLLER!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Replaces the church with the Emoji sent from the other controller
        emojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
