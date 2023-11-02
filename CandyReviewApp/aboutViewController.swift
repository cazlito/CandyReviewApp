//
//  aboutViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 11/2/23.
//

import UIKit

class aboutViewController: UIViewController {

    @IBOutlet weak var aboutInfoLabel: UILabel!
    @IBOutlet weak var aboutNameLabel: UILabel!
    
    override func viewDidLoad() {
        
        self.aboutInfoLabel.text = "Hello! My name is Cazandra Rufo and I am a student at UHWO who is a candy connissuer"
        
        self.aboutNameLabel.text = "Candy Reviewer: Cazandra Rufo"
        
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
