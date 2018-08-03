//
//  TelaCompromisso.swift
//  pod-test
//
//  Created by Silvia  on 02/08/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class TelaCompromisso: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nomeCompromisso: UITextField!
    
    @IBAction func passarCompromissos(_ sender: Any) {
        performSegue(withIdentifier: "SegueCompromissos", sender: nil)
    }
  
    
    @IBAction func passarHorario(_ sender: Any) {
        performSegue(withIdentifier: "SegueHorarios", sender: nil)
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
