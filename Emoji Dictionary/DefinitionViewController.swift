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
    var emoji : Emoji = Emoji()

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Replaces all data with related emoji data
        emojiLabel.text = emoji.stringEmoji
        // Don't forget to convery INT to STRING
        birthyearLabel.text = "Birthyear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = "Definition: \(emoji.definition)"

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
