//
//  p5.swift
//  ios.day1.hw
//
//  Created by iFunMac on 9/26/21.
//

import Foundation

func p5() -> Void {
    print("\nP5\n")
    var initNumber: Int = 0;
    
    repeat {
        let amstrongNumber: Int = powerNumber(initNumber);
        if initNumber == amstrongNumber {
            print(initNumber)
        }
        initNumber += 1
    } while (initNumber < 1000)
}

func powerNumber(_ num: Int) -> Int {
    let degits = num.digits
    let output = degits.reduce(0, { x, y in
        x + Int(truncating: NSDecimalNumber(decimal: pow(Decimal(y), 3)))
    })
    return output
}
