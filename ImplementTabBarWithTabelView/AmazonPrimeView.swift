//
//  AmazonPrimeView.swift
//  ImplementTabBarWithTabelView
//
//  Created by OLX on 13/05/24.
//

import UIKit

class AmazonPrimeView: UIViewController {
   
    
    var webSeriesList:[String] = [" Sacam 1992", "Gaddar 1999", "Maharani", "Kahthmandu Cnnection", "AsurPart 1", " Sacam 1992", "Gaddar 1999" ,"Kahthmandu Cnnection", "AsurPart 1"]
    
    @IBOutlet weak var myTabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTabelView.tableFooterView = UIView() 
        // Do any additional setup after loading the view.
    }
    


}



extension AmazonPrimeView:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTabelView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = webSeriesList[indexPath.row]
        
        
        return cell
    }
    
    
}
