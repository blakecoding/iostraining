//
//  p2.swift
//  ios.day1.hw
//
//  Created by iFunMac on 9/26/21.
//

import Foundation

extension StringProtocol  {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}

extension LosslessStringConvertible {
    var string: String { .init(self) }
}

extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}

func p2() -> Void {
    print("\nP2\n")
    let number = inputInt("number", conditionMaxValue: 10000)
    if number >= 10 {
        let set : Set<Int> = Set(number.digits)
        let sortedSet = set.sorted{ $0 > $1 }
        if sortedSet.count >= 2 {
            print("output: \(sortedSet[1])")
        } else {
            print("output: \(sortedSet[0])")
        }
    }
    else {
        print("output: \(number)")
    }
}
