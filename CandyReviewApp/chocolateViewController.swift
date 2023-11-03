//
//  chocolateViewController.swift
//  CandyReviewApp
//
//  Created by Cazandra Rufo on 11/2/23.
//

import UIKit

class chocolateViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var chocolateTableView: UITableView!
   
    var myChocolateArray = ["Hershey", "KitKat", "Snickers", "Twix"]
    var myRatingsArray = ["4.5 stars", "4 stars", "4 stars", "4 stars"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myChocolateArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chocoCell", for: indexPath)
        
        let text = myChocolateArray[indexPath.row]
        cell.detailTextLabel?.text = myRatingsArray[indexPath.row]

        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "myThirdSegue" {
            let s1 = segue.destination as! secondDetailViewController
            let imageIndex = chocolateTableView.indexPathForSelectedRow?.row
            s1.imagePass = categoryOneImagesData[imageIndex!]
        }
    }
    
    var categoryOneImagesData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryOneImagesData = dict!.object(forKey: "CategoryOneImages") as! [String]
        

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
