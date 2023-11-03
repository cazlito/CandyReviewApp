//
//  ViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 10/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeButtonLabel: UIButton!
    @IBOutlet weak var homeLabel: UILabel!
    
    @IBAction func homeButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeLabel.text = "Featured Candy: Swedish Fish"
    
        // Do any additional setup after loading the view.
    }


}

