//
//  ViewController.swift
//  MiniAppStoreNike
//
//  Created by Сергей Саченко on 25.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var nikeImageLabel: UIImageView!
    @IBOutlet weak var storeNameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: setting Label
        
        storeNameLabel.isHighlighted = true
        storeNameLabel.numberOfLines = 0
        
        storeNameLabel.shadowColor = .white
        storeNameLabel.shadowOffset = CGSize(width: 1, height: 1)
        
        storeNameLabel.layer.cornerRadius = 1
        storeNameLabel.layer.shadowColor = UIColor.white.cgColor
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let regView = storyboard?.instantiateViewController(withIdentifier: "desReg")
        regView?.modalPresentationStyle = .fullScreen
        show(regView!, sender: nil)
    }
}

