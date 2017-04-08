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
    
    // How many rows in Table View? The '-> Int' is the Return function!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    // What do you want inside of each row of Table View? Also, ROW = CELL! Note the Return!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        // Every cell will have 'HELLO THERE' as label. Note the question mark
        cell.textLabel?.text = "HELLO THERE"
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

