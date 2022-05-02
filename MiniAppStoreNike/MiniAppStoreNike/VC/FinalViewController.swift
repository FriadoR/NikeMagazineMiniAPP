//
//  FinalViewController.swift
//  MiniAppStoreNike
//
//  Created by Сергей Саченко on 29.04.2022.
//

import UIKit

class FinalViewController: UIViewController {

    var shoesFTF: String!
    var sizeFTF: String!
    var totalPriceFTF: String!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var tnxLabel: UILabel!
    @IBOutlet weak var purchasesLabel: UILabel!
    @IBOutlet weak var shoesLinkImage: UIImageView!
    @IBOutlet weak var shoesLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var shoesFinalTF: UILabel!
    @IBOutlet weak var sizeFinalTF: UILabel!
    @IBOutlet weak var totalPriceFinalTF: UILabel!
    
    
    @IBOutlet weak var payButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoesFinalTF.text = self.shoesFTF
        sizeFinalTF.text = self.sizeFTF
        totalPriceFinalTF.text = self.totalPriceFTF
        
    }
    
    
    @IBAction func payActionButton(_ sender: Any) {
        alertFinalButton(title: "Please wait...", message: "Payment process", style: .alert)
        alertThanks(title: "Well done!", message: "Thanks for purchase!", style: .alert)
    }
   
    // MARK: alert Method
    func alertFinalButton(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    func alertThanks(title: String, message: String, style: UIAlertController.Style) {
        let alertControl = UIAlertController(title: title, message: message, preferredStyle: style)
        let work = UIAlertAction(title: "OK", style: .default)
        alertControl.addAction(work)
        present(alertControl, animated: true, completion: nil)
    }
}

