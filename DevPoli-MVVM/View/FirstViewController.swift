//
//  ViewController.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 02/11/23.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var passViewBtn: UIButton!
    @IBOutlet weak var titleViewLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstViewModel = FirstViewModel()
        firstViewModel.delegate = self
        firstViewModel.onLoad()
        passViewBtn.configuration?.title = "To navigate"

    }
    
    
    @IBAction func navigateBtnTap(_ sender: UIButton) {
        guard let destinationVc = storyboard?.instantiateViewController(identifier: "goToSecondView") else {return}
        navigationController?.pushViewController(destinationVc, animated: true)
        
    }
    
}

extension FirstViewController: FirstViewModelDelegate {
    
    func getNameOfTheView(nameOfTheView: String) {
        titleViewLabel.text = nameOfTheView
    }
    
}

