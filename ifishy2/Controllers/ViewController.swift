//
//  ViewController.swift
//  ifishy2
//
//  Created by Mac on 6/4/2022.
//

import UIKit

class ViewController: UIViewController {
    //var
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "pSegue"{
        let destination = segue.destination as! ProductViewController
        
        } else {
            
            let destination = segue.destination as! RegisterViewController
            
        }
    }
    @IBAction func login(_ sender: Any) {
        performSegue(withIdentifier: "pSegue", sender: sender)
    }
    
    
    
    
    @IBAction func Register(_ sender: Any) {
        performSegue(withIdentifier: "rSegue", sender: sender)
    }
    
}

