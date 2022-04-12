//
//  DetailsViewController.swift
//  ifishy2
//
//  Created by Mac on 7/4/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    //Var
    var productName : String?
    
    
    
    //Widgets
    @IBOutlet weak var ProductImageView: UIImageView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    //LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameLabel.text = productName!
        ProductImageView.image = UIImage(named: productName!)
        
    }
    

   

}
