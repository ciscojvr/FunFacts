//
//  ViewController.swift
//  FunFacts
//
//  Created by Francisco Ozuna on 12/28/19.
//  Copyright © 2019 Francisco Ozuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactsProvider()
    let colorProvider = BackgroundColorProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
    

}

