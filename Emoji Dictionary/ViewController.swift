//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Brandon Viertel on 4/8/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import UIKit

/* Needed to add UITableViewDataSource and UITableViewDelegate due to use below. Note how they were added in. */

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Connection to table code from StoryBoard
    @IBOutlet weak var dacooltableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Where is the information coming from? (See note above ViewController)
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

