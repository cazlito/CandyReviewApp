//
//  moreInfoViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 11/2/23.
//

import UIKit

class moreInfoViewController: UIViewController {
    @IBOutlet weak var candyNameLabel: UILabel!
    @IBOutlet weak var candyReviewLabel: UILabel!
    @IBOutlet weak var featuredCandyImage: UIImageView!
    
    override func viewDidLoad() {
        let swedishFish = UIImage(named: "swedishFish")
        
        self.candyNameLabel.text = "Swedish Fish"
        self.candyReviewLabel.text = "Swedish Fish are a timeless classic in the world of candy, and for good reason. These iconic red gummy fish have been delighting taste buds for generations, and their simple yet satisfying flavor is hard to resist."
        
        self.featuredCandyImage.image = swedishFish
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
