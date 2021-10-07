//
//  RandomNumberGameController.swift
//  exercise2
//
//  Created by iFunMac on 10/4/21.
//

import UIKit

class RandomNumberGameController: UIViewController {
    
    @IBOutlet weak var randonValueNumer: UILabel!
    @IBOutlet weak var startGameBtn: UIButton!
    @IBOutlet weak var guessNumber: UITextField!
    @IBOutlet weak var gameMessage: UILabel!
    
    var userNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randonValueNumer.text = "000"
        guessNumber.keyboardType = .numberPad
        startGameBtn.isEnabled = false
        gameMessage.text = ""
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func handePlayGame(_ sender: UIButton) {
        let randomInt = Int.random(in: 1..<100)
        randonValueNumer.text = String(format: "%03d",randomInt)
        if randomInt>userNumber {
            gameMessage.text = "Too Low"
        } else if randomInt < userNumber {
            gameMessage.text = "Too High"
        } else {
            gameMessage.text = "Congratulations!"
        }
    }
    
    @IBAction func handeInputNumber(_ sender: Any) {
        print(guessNumber.text ?? "")
        if let input = guessNumber.text, let int = Int(input) {
            if (1...100).contains(int) {
                startGameBtn.isEnabled = true
                userNumber = int
            } else {
                startGameBtn.isEnabled = false
                gameMessage.text = ""
            }
        } else {
            startGameBtn.isEnabled = false
            gameMessage.text = ""
        }
    }
    
    
}
