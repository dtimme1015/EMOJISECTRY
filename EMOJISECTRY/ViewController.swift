//
//  ViewController.swift
//  EMOJISECTRY
//
//  Created by Dieter Timmermann on 25.05.17.
//  Copyright © 2017 dthcp. All rights reserved.
//

import UIKit

internal class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak internal var Onesietableview: UITableView!
    
    var emojis = ["😍","😎","🤠","🐼","😇"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Onesietableview.dataSource = self
        Onesietableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender:emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

