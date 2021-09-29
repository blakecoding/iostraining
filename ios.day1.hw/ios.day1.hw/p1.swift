//
//  p1.swift
//  ios.day1.hw
//
//  Created by iFunMac on 9/26/21.
//

import Foundation

func p1 () -> Void {
    print("\nP1\n")
    let hour: Int = inputInt("Hour")
    let minute: Int =  inputInt("Min")
    let second: Int = inputInt("Second")
    let plusTime: Int = inputInt("X", conditionMaxValue: 10000)
    let (nextHour, nextMinute, nextSecond) = getPlusTime(hour,minute, second, plus: plusTime)
    print("===")
    print("input time: \(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second)), X: \(plusTime)s")
    print("output time: \(String(format: "%02d", nextHour)):\(String(format: "%02d", nextMinute)):\(String(format: "%02d", nextSecond))")
    print("===")
}

func inputInt (_ name: String, conditionMaxValue: Int? = nil, conditionMinValue: Int = 0) -> Int {
    var output: Int = 0
    var isProcessing: Bool = true
    repeat {
        if let max = conditionMaxValue {
            print("Please enter \(name), Less than or equare \(max): ", terminator:"")
        } else {
            print("Please enter \(name): ", terminator:"")
        }
        if let input = readLine()
        {
            if let int = Int(input)
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

func getPlusTime (_ hour: Int,_ minunus: Int,_ second: Int, plus: Int) -> (hour: Int, minunus: Int, second: Int) {
    let nextHour = hour + plus / (60 * 60)
    let nextMinute = minunus + plus / 60 % 60
    let nextSecond = second + plus % 60
    return (nextHour, nextMinute, nextSecond)
}

