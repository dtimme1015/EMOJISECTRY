//
//  DefinitionViewController.swift
//  EMOJISECTRY
//
//  Created by Dieter Timmermann on 27.05.17.
//  Copyright © 2017 dthcp. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       emojiLabel.text = emoji
        
        if emoji == "🐼" {
        definitionLabel.text = "A cute Panda bear"
    }
        if emoji == "😍" {
            definitionLabel.text = "Smiley with heart eyes"
    }
        if emoji == "😎" {
            definitionLabel.text = "A dude with sunglasses"
    }
        if emoji == "🤠" {
            definitionLabel.text = "You can keep your hat on!"
    }
        if emoji == "😇" {
            definitionLabel.text = "Holy Cow !!!"
    }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
