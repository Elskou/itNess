//
//  UILabelNumeric.swift
//  itNess
//
//  Created by Yorrick BARNAY on 14/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import UIKit

class UILabelNumericDouble: UILabel {
    
    open var unit: String?
    open var numericValue: Double?
    //min value excluded
    open var minValue: Double?
    //max value excluded
    open var maxValue: Double?
        
    func isWithinLimits(_ aValue: Double)->Bool{
        if let minValue = self.minValue {
            if aValue <= minValue{
                return false
            }
        }
        if let maxValue = self.maxValue {
            if aValue >= maxValue{
                return false
            }
        }
        
        return true
    }
    
    override var text: String? {
        get{
            return super.text
        }
        //set label text to value only if is a numeric value within the limits set
        set{
            super.text="test"
//            if let newValue = newValue{
//                if let newValue:Double = Double(newValue){
//                    if(self.isWithinLimits(newValue)){
//                        self.numericValue = newValue
//                        super.text = unwrapOptDoubleToString(self.numericValue)+" "+unwrapOptString(self.unit)
//                    }
//                }
//            }
        }
    }
    
    func unwrapOptString(_ value: String?)->String{
        if let value: String = value {
            return value
        }
        else{
            return ""
        }
    }
    
    func unwrapOptDoubleToString(_ value: Double?)->String{
        if let value: Double = value {
            return String(value)
        }
        else{
            return ""
        }
    }
}
