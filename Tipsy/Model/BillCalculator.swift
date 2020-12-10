//
//  BillCalculator.swift
//  Tipsy
//
//  Created by Dayton on 11/12/20.
//

import UIKit

struct BillCalculator {
    
    
    var bill:String?
    var tipp = 0.10
    var split:String?
    
    
   
    
    mutating func getPrice(price:String?, splitBy:String?){
         
        let formattedPrice = Double(price!) ?? 0.00
        let actualTip = formattedPrice * tipp
        let numberSplit = Double(splitBy!)!
        
        let currentBill = (formattedPrice + actualTip) / numberSplit
        bill = String(format: "%.2f", currentBill)
        split = String(format: "%.0f", numberSplit)
        
    }
    
    mutating func updateTip(tip:String){
        
        let titleMinusSign = String(tip.dropLast())
        
        tipp  = Double(titleMinusSign)! / 100
    }
    
    func getBill() -> String {
        return bill ?? "0.00"
    }
    
    func getTip() -> String {
        let formattedTip = String(format: "%.0f", tipp * 100)
        return ("\(formattedTip)%")
    }
    func getSplit() -> String {
        return split ?? "2"
    }
    
     
}

