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
    
    // Creating an Array to store everything in the table. Where ALL of the data is coming from.
    var emojis = ["😀","😋","😎","👽","😈","✌🏼","👨‍👩‍👦‍👦","🐱"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Where is the information coming from? (See note above ViewController)
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
    }
    
    // How many rows in Table View? The '-> Int' is the Return function!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        
    }
    
    // What do you want inside of each row of Table View? Also, ROW = CELL! Note the Return!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // The var 'row' seems to be inherent to the tableView class...
        print(indexPath.row)
        
        // Setting var 'cell' to type of 'UITableViewCell()'
        let cell = UITableViewCell()
        
        // Every cell will have 'HELLO THERE' as label. Note the question mark
        cell.textLabel?.text = emojis[indexPath.row]
        
        // Returning cell; note the Return value in declaration
        return cell
        
    }
    
    
    // Something to allow switching between view controllers
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Sets temporary Emoji holder to whatever Emoji is in whatever 'row' is being selected
        let emoji = emojis[indexPath.row]
        
        // The var 'sender' seems to be inherent with the tableView class... Note 'withIdentifier' and 'sender'.
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Setting 'defVC' as location for the Definition View Controller. Note the 'let' and the 'as!'.
        let defVC = segue.destination as! DefinitionViewController
        
        // Changing the var 'emoji' under the Definition View Controller as whatever the 'sender' is.
        defVC.emoji = sender as! String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

