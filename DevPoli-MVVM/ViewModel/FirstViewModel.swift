//
//  FirstViewModel.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 02/11/23.
//

import Foundation

protocol FirstViewModelDelegate: AnyObject{
    func getNameOfTheView(nameOfTheView: String)
}

class FirstViewModel {
  
    let nameOfTheView = NameViewsModel()
    
    weak var delegate: FirstViewModelDelegate?
      
    func onLoad(){
        delegate?.getNameOfTheView(nameOfTheView: nameOfTheView.firstViewName)
    }

    
    
}
