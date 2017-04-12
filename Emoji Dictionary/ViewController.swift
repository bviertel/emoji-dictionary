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
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Where is the information coming from? (See note above ViewController)
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        // Loads up on load
        emojis = makeEmojiArray()
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
        
        let emoji = emojis[indexPath.row]
        
        // Can change the last part to display whatever var of emoji
        cell.textLabel?.text = emoji.stringEmoji
        
        // Returning cell; note the Return value in declaration
        return cell
        
    }
    
    
    // Something to allow switching between view controllers
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Everything is under the tableView thing
        
        // Deselects item after selection, removes gray selection bar
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Sets temporary Emoji holder to whatever Emoji is in whatever 'row' is being selected
        let emoji = emojis[indexPath.row]
        
        // The var 'sender' seems to be inherent with the tableView class... Note 'withIdentifier' and 'sender'.
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Setting 'defVC' as location for the Definition View Controller. Note the 'let' and the 'as!'.
        let defVC = segue.destination as! DefinitionViewController
        
        // Changing the var 'emoji' under the Definition View Controller as whatever the 'sender' is.
        defVC.emoji = sender as! Emoji
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returning ARRAY of Emoji objects
    func makeEmojiArray() -> [Emoji] {
        
        // To constant
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face"
        
        // To constant
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😋"
        emoji2.birthYear = 2007
        emoji2.category = "Smiley X2"
        emoji2.definition = "A smiley face with tongue out"
        
        // To constant
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😎"
        emoji3.birthYear = 2008
        emoji3.category = "Smiley X1"
        emoji3.definition = "A smiley face with sun glasses"
        
        // To constant
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👽"
        emoji4.birthYear = 2007
        emoji4.category = "Alien"
        emoji4.definition = "An alien"
        
        // To constant
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😈"
        emoji5.birthYear = 2012
        emoji5.category = "Devils"
        emoji5.definition = "A purple devil smiley"
        
        // To constant
        let emoji6 = Emoji()
        emoji6.stringEmoji = "✌🏼"
        emoji6.birthYear = 2014
        emoji6.category = "Hands"
        emoji6.definition = "A peace sign"

        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
        
        
    }


}

