//
//  hardCandyViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 11/2/23.
//

import UIKit

class hardCandyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var hardCandyTableView: UIView!
    
    
    var myCandyArray = ["Jolly-Rancher", "Lemon Head", "Life Savers", "Werthers"]
    var myRatingsArray = ["3 stars", "3 stars", "2 stars", "1 stars"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "candyCell", for: indexPath)
        
        let text = myCandyArray[indexPath.row]
        cell.detailTextLabel?.text = myRatingsArray[indexPath.row]

        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySecondSegue" {
            let s1 = segue.destination as! secondDetailViewController
            let imageIndex = hardCandyTableView.indexPathForSelectedRow?.row
            s1.imagePass = categoryTwoImagesData[imageIndex!]
        }
    }
    
    var categoryTwoImagesData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryTwoImagesData = dict!.object(forKey: "CategoryTwoImages") as! [String]
        


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
