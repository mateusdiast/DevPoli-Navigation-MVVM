//
//  ThirdViewController.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var passViewBtn: UIButton!
    @IBOutlet weak var nameValueLabel: UILabel!
    @IBOutlet weak var dateValueLabel: UILabel!
    
    var userDateValue: Int = 0
    var userNameValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameValueLabel.text = "Name: \(userNameValue)"
        dateValueLabel.text = "Age: \(userDateValue) Years"
        passViewBtn.configuration?.title =  "SEND ANOTHER USER"
    }
    
    @IBAction func navigateBtnTap(_ sender: UIButton){
        navigationController?.popToRootViewController(animated: true)
        }
    }
    
