//
//  gummiesViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 11/2/23.
//

import UIKit

class gummiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var gummyTableView: UITableView!
    
    var myGummyArray = ["Haribo", "Trolli", "Swedish Fish", "Sour Patch"]
    var myRatingsArray = ["5 stars", "4 stars", "4 stars", "3.5 stars"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGummyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let text = myGummyArray[indexPath.row]
        cell.detailTextLabel?.text = myRatingsArray[indexPath.row]

        cell.textLabel?.text = text
        return cell
    }
    
    override func viewDidLoad() {
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