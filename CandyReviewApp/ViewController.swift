//
//  ViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 10/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
 
    @IBOutlet weak var featuredCandyImage: UIImageView!
    
    @IBOutlet weak var homeButtonLabel: UIButton!
    @IBOutlet weak var homeLabel: UILabel!
    
    @IBAction func homeButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgImage = UIImage(named: "bgImage")
        let swedishFish = UIImage(named: "swedishFish")
        
        self.homeLabel.text = "Featured Candy: Swedish Fish"
        self.backgroundImage.image = bgImage
        self.featuredCandyImage.image = swedishFish
    
        // Do any additional setup after loading the view.
    }


}

