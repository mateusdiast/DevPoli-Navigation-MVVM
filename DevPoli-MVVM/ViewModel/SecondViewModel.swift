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
    
    private var years: Int = 0
    private let calender = Calendar.current
    private let date = Date()

    weak var delegate: SecondViewModelDelegate?
    
    func validateDate(datePickerValue: Date){
        
        let ageComponent = calender.dateComponents([.year], from: datePickerValue, to: date)
        years = ageComponent.year!
             
        if years >= 1 {
            delegate?.navigationNextView(date: years)
        }else{
            delegate?.validateResult()
        }
    }
    
    
}


