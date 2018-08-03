//
//  ViewController.swift
//  pod-test
//
//  Created by student on 31/07/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MaterialComponents
import MaterialComponents.MaterialBottomAppBar
import AVFoundation

class Funcional: UIViewController, AVAudioRecorderDelegate, AVAudioPlayerDelegate {
    
    
    @IBOutlet weak var imageLogo: UIImageView!
    var toOuvindo: Bool = false

    private let bottomBarView = MDCBottomAppBarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iaraSleep()
        
       self.instatiateBottomBar()
        
    }
    
 
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        DispatchQueue.main.async {
            self.layoutBottomAppBar()
        }
        
    }
    
    func instatiateBottomBar() {
        bottomBarView.translatesAutoresizingMaskIntoConstraints = false
        bottomBarView.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        view.addSubview(bottomBarView)
        
        bottomBarView.setFloatingButtonPosition(.trailing, animated: true)
        bottomBarView.floatingButton.setImage(UIImage(named: "ic_done"), for: .normal)
        bottomBarView.floatingButtonPosition = .center
        
        let barButtonLeadingItem = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(onMenuButtonTapped))
        let barButtonTrailingItem = UIBarButtonItem(title: "Dados Pessoais", style: .plain, target: self, action: #selector(onSearchButtonTapped))
        
        bottomBarView.floatingButton.addTarget(self, action: #selector(floatingButtonAction), for: .touchDown)
        
        bottomBarView.leadingBarButtonItems = [ barButtonLeadingItem ]
        bottomBarView.trailingBarButtonItems = [ barButtonTrailingItem ]
    }
    
    func floatingButtonAction(){
        
        
        if(toOuvindo == true){
            iaraSleep()
            print("fui apertado!")
            toOuvindo = false
        }else{
            iaraSpeak()
            toOuvindo = true
        }
        
        
    }
    
    private func layoutBottomAppBar() {
        
        let size = bottomBarView.sizeThatFits(view.bounds.size)
        let bottomBarViewFrame = CGRect(x: 0, y: view.bounds.size.height - size.height, width: size.width, height: size.height)
        bottomBarView.frame = bottomBarViewFrame
        print("esse")
        
    }
    
    func onMenuButtonTapped() {
        
        if let vc = UIStoryboard(name: "Tela2", bundle: nil).instantiateInitialViewController() as? Tela2VC{
            self.present(vc, animated: true, completion: nil)
        }
        
        
//        performSegue(withIdentifier: "vaiProVerde", sender: nil)
//        bottomBarView.setFloatingButtonPosition(.leading, animated: true)
    }
    
    func onSearchButtonTapped() {
//        bottomBarView.setFloatingButtonPosition(.trailing, animated: true)
        if let troca = UIStoryboard(name: "Tela3", bundle: nil).instantiateInitialViewController() as? Tela3View{
            self.present(troca, animated: true, completion: nil)
        }
        
    }
    func iaraSpeak(){
        
        var iaraFalando = ["Orange_01", "Orange_02"]
        
        var images = [UIImage]()
        for i in 0..<iaraFalando.count{
            images.append(UIImage(named: iaraFalando[i])!)
        }
        
        imageLogo.animationImages = images
        imageLogo.animationDuration = 2.0
        imageLogo.startAnimating()
    }
    
    func iaraSleep(){
        imageLogo.stopAnimating()
        imageLogo.image = UIImage(named: "Blue")
    }
    
    func iaraHear(){
        imageLogo.image = UIImage(named: "Green")
    }
    
}
