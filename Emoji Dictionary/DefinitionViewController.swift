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
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var birthyearLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    // Just to have a starting point. ALSO LINKED WITHIN THE MAIN VIEW CONTROLLER!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Replaces the church with the Emoji sent from the other controller
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            
            definitionLabel.text = "This is a smiley person"
            
            categoryLabel.text = "Category: SMILEY"
            
            birthyearLabel.text = "Birthyear: 2010"
            
        } else if emoji == "😋" {
            
            definitionLabel.text = "This is a smiley person with it's tongue out"
            
            categoryLabel.text = "Category: DIFF SMILEY"
            
            birthyearLabel.text = "Birthyear: 2006"

            
        } else if emoji == "😎" {
            
            definitionLabel.text = "This is a smiley person with shades"
            
        } else {
            
            definitionLabel.text = "Not yet defined"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
