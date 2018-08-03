//
//  tela2.swift
//  pod-test
//
//  Created by student on 31/07/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class Tela2VC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func trem(_ sender: Any) {
//        performSegue(withIdentifier: "vaiProMain", sender: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func paraCompromissos(_ sender: Any) {
        performSegue(withIdentifier: "segueCompromissos", sender: nil)
    }
    
    @IBAction func paraLocalizacao(_ sender: Any) {
        performSegue(withIdentifier: "segueLocalizacao", sender: nil)
    }
    
    @IBAction func paraHorarios(_ sender: Any) {
        performSegue(withIdentifier: "segueHorarios", sender: nil)
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
