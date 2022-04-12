//
//  ProductViewController.swift
//  ifishy2
//
//  Created by Mac on 7/4/2022.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //var
       var product = ["fishingline","floats","hooks","landingnet","lightspinningrod","lures","sinker","swivels"]
    
    
    //widgets
    @IBOutlet weak var productTable: UITableView!

    //func
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = tableView.dequeueReusableCell(withIdentifier: "pCell", for: indexPath)
             let cv = mCell.contentView
             let imageview = cv.viewWithTag(1) as! UIImageView
             let label = cv.viewWithTag(2) as! UILabel
             label.text = product[indexPath.row]
             imageview.image = UIImage(named: product[indexPath.row])
             return mCell    }
    //Data source protocol
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "dSegue", sender: indexPath)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dSegue" {
                 let index = sender as! IndexPath
                 let destination = segue.destination as! DetailsViewController
            destination.productName = product[index.row]
         }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
}
