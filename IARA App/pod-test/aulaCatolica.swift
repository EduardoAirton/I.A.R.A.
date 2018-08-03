//
//  aulaCatolica.swift
//  pod-test
//
//  Created by Silvia  on 02/08/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class aulaCatolica: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltaCompromissos(_ sender: Any) {
    }
    
    @IBAction func salvaEPassaMenu(_ sender: Any) {
        performSegue(withIdentifier: "SegueSalvaMenu", sender: nil)
    }
    
    @IBAction func passarLocalizacao(_ sender: Any) {
        performSegue(withIdentifier: "SegueLocalizacao", sender: nil)
    }
    @IBAction func passarHorarios(_ sender: Any) {
        performSegue(withIdentifier: "SegueHorarios2", sender: nil)
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
