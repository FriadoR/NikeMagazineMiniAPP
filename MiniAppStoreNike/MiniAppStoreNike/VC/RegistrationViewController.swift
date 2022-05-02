//
//  RegistrationViewController.swift
//  MiniAppStoreNike
//
//  Created by Сергей Саченко on 25.04.2022.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var imageNikeView: UIImageView!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: settings view
        
        passwordTF.isSecureTextEntry = true
        signInLabel.isHighlighted = true
        signInLabel.numberOfLines = 0
        signInLabel.shadowColor = .white
        signInLabel.shadowOffset = CGSize(width: 1, height: 1)
        signInLabel.layer.cornerRadius = 1
        signInLabel.layer.shadowColor = UIColor.white.cgColor
        
    }
    
    @IBAction func confirmToMButton(_ sender: Any) {
        let des = storyboard?.instantiateViewController(withIdentifier: "toM")
        des?.modalPresentationStyle = .fullScreen
        show(des!, sender: nil)
    }
}
