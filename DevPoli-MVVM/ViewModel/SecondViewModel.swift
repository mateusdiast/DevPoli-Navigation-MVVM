//
//  SecondViewModel.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import Foundation

protocol SecondViewModelDelegate: AnyObject{
    func navigationNextView(date: Int)
    func validateResult()
}

class SecondViewModel {
    
    weak var delegate: SecondViewModelDelegate?
    
    func validateDate(datePickerValue: Date){
    
        let date = Date()
        let calender = Calendar.current
        let ageComponent = calender.dateComponents([.year], from: datePickerValue, to: date)
        let years = ageComponent.year!
             
        if years >= 1 {
            delegate?.navigationNextView(date: years)
        }else{
            delegate?.validateResult()
        }
    }
    
    
}


