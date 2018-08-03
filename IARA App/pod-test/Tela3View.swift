//
//  Tela3View.swift
//  pod-test
//
//  Created by student on 01/08/18.
//  Copyright © 2018 student. All rights reserved.
//


import UIKit

class Tela3View: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func trocaTela(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func paraPegarDados(_ sender: Any) {
        performSegue(withIdentifier: "SeguePegarDados", sender: nil)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
