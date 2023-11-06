//
//  ViewController.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import UIKit


class SecondViewController: UIViewController{
    
    @IBOutlet weak var passViewBtn: UIButton!
    @IBOutlet weak var titleViewLabel: UILabel!
    
    
    override func viewDidLoad(){
      super.viewDidLoad()
        let secondViewModel = SecondViewModel()
        secondViewModel.delegate = self
        secondViewModel.onLoad()
        passViewBtn.configuration?.title = "To navigate"
        
    }
    
    @IBAction func navigateBtnTap(_ sender: UIButton) {
        guard let destinationVc = storyboard?.instantiateViewController(identifier: "goToThirdView") else {return}
        navigationController?.pushViewController(destinationVc, animated: true)
    }
}

extension SecondViewController: SecondViewModelDelegate {
    func getNameOfTheView(nameOfTheView: String) {
        titleViewLabel.text = nameOfTheView
    }
}
  
