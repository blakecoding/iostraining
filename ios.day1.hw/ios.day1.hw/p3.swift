//
//  p3.swift
//  ios.day1.hw
//
//  Created by iFunMac on 9/26/21.
//

import Foundation


func p3() -> Void {
    print("\nP3\n")
    let number = inputDouble("Km")
    let monney = getMoneyByKm(number)
    print("Output Monney: \(monney)")
}

func inputDouble (_ name: String, conditionMaxValue: Double? = nil, conditionMinValue: Double = 0) -> Double {
    var output: Double = 0
    var isProcessing: Bool = true
    repeat {
        if let max = conditionMaxValue {
            print("Please enter \(name), Less than or equare \(max): ", terminator:"")
        } else {
            print("Please enter \(name): ", terminator:"")
        }
        if let input = readLine()
        {
            if let int = Double(input)
            {
                if let max = conditionMaxValue {
                    if int <= max && int >= conditionMinValue {
                        output = int
                        print("\(name): \(int)")
                        isProcessing = false
                    } else {
                        print("(!) Entered input is \(input). input from \(conditionMinValue) to \(max)")
                    }
                } else {
                    if  int >= conditionMinValue {
                        output = int
                        print("\(name): \(int)")
                        isProcessing = false
                    } else {
                        print("(!) Entered input is \(input). input more than \(conditionMinValue)")
                    }
                }
            }
            else{
                print("(!) Entered input is \(input) of the type:\(type(of: input)). Please enter a number")
            }
        }
    } while (isProcessing)
    return output
}

func getMoneyByKm(_ km: Double) -> Double {
    let firstKmPrice: Double = 5000
    let next30KmPrice: Double = 4000
    let over30KmPrice: Double = 3000
    var output: Double = 0;
    if km <= 1 {
        output = km * firstKmPrice
    } else if km <= 31 {
        output = (km - 1) * next30KmPrice + firstKmPrice
    } else {
        output = (km - 31) * over30KmPrice + 30 * next30KmPrice + firstKmPrice
    }
    return output
}


