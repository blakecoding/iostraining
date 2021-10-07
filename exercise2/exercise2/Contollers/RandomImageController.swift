//
//  RandomImageController.swift
//  exercise2
//
//  Created by iFunMac on 10/4/21.
//

import UIKit

class RandomImageController: UIViewController {
    
    let images: [String] = ["image1", "image2", "image3", "image4"]
    var previusImageIndex = 0
    
    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Image.image = UIImage(named: images[0])
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleNextImage(_ sender: Any) {
        var randomInt = Int.random(in: 1..<100)
        var nextImageIndex = randomInt % 4
        if previusImageIndex == nextImageIndex {
            randomInt += 1
            nextImageIndex = randomInt % 4
        }
        Image.image = UIImage(named: images[nextImageIndex])
        previusImageIndex = nextImageIndex
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
