//
//  Constants.swift
//  Todo
//


import Foundation
import UIKit

// Sizes
let MINIMIZED_LIST_HEIGHT: CGFloat = 360
let MINIMIZED_LIST_WIDTH: CGFloat = 286
let SAFE_BUFFER: CGFloat = UIDevice().type == .iPhoneX ? 55 : 30

// Duration
let LONG_ANIMATION_DURATION: Double = 0.4
let MEDIUM_ANIMATION_DURATION: Double = 0.2
let SHORT_ANIMATION_DURATION: Double = 0.15

// Color Schemes
let colorSchemes: [[String: UIColor]] = [
    ["primary": .redOrange, "secondary": .orangeRed],
    ["primary": .oceanBlue, "secondary": .babyBlue],
    ["primary": .darkPurple, "secondary": .lightPurple],
    ["primary": .darkGreen, "secondary": .lightGreen],
    ["primary": .shore, "secondary": .sand],
]

// List Icons
let iconImages: [UIImage] = [
    UIImage(named: "checklist")!,
    UIImage(named: "briefcase")!,
    UIImage(named: "person")!,
    UIImage(named: "books")!,
    UIImage(named: "light")!,
]
