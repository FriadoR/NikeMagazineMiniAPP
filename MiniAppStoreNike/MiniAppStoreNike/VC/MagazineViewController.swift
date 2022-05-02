//
//  MagazineViewController.swift
//  MiniAppStoreNike
//
//  Created by Сергей Саченко on 28.04.2022.
//

import UIKit

class MagazineViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet var shoesImage: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var prepayLabel: UILabel!
    @IBOutlet weak var switchPrepay: UISwitch!
    @IBOutlet weak var CheckOutButton: UIButton!
    @IBOutlet weak var magazineLabel: UILabel!
    @IBOutlet var segmentChoice: UISegmentedControl!
    @IBOutlet var costShoesTF: UITextField!
    @IBOutlet weak var sizeTF: UITextField!
    
    // MARK: array & picker
    var pickerSizeView = UIPickerView()
    var sizeArray = ["36", "37", "38", "39", "40", "41", "42", "43", "44"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: picker delegate & dataSource
        pickerSizeView.delegate = self
        pickerSizeView.dataSource = self
       
        // MARK: other view settings
        sizeTF.inputView = pickerSizeView
        magazineLabel.isHighlighted = true
        magazineLabel.numberOfLines = 0
        magazineLabel.shadowColor = .white
        magazineLabel.shadowOffset = CGSize(width: 1, height: 1)
        magazineLabel.layer.cornerRadius = 1
        magazineLabel.layer.shadowColor = UIColor.white.cgColor
        
        CheckOutButton.isHighlighted = true
        CheckOutButton.layer.cornerRadius = 1
        CheckOutButton.layer.shadowColor = UIColor.white.cgColor
        
        shoesImage.contentMode = .scaleAspectFit
        segmentChoice.selectedSegmentIndex = 0
        segmentChoice.selectedSegmentTintColor = .white
        
    }
    
    @IBAction func changeSegmentControllerButton(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: shoesImage.image = UIImage(named: "01")
            costShoesTF.text = "199 $"
        case 1: shoesImage.image = UIImage(named: "02")
            costShoesTF.text = "99 $"
        case 2: shoesImage.image = UIImage(named: "03")
            costShoesTF.text = "65 $"
        default:
            break
        }
    }
    
    @IBAction func checkOutToFinalControllerButton(_ sender: Any) {
        let finalVC = storyboard?.instantiateViewController(withIdentifier: "last") as! FinalViewController
        finalVC.modalPresentationStyle = .fullScreen
        finalVC.shoesFTF = self.segmentChoice.titleForSegment(at: 0)
        finalVC.sizeFTF = self.sizeTF.text
        finalVC.totalPriceFTF = self.costShoesTF.text
        self.show(finalVC, sender: nil)
    }
    // MARK: Method picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        sizeArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sizeArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sizeTF.text = sizeArray[row]
        sizeTF.resignFirstResponder()
    }
}
