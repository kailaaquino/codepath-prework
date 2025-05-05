//
//  ViewController.swift
//  codepath
//
//  Created by Kaila Aquino on 5/4/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var aspirationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBgColor(_ sender: UIButton) {
        let randomColor = changeColor()
           view.backgroundColor = randomColor
       
    }
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let textColor = changeText()
            nameLabel.textColor = textColor
            schoolLabel.textColor = textColor
            aspirationLabel.textColor = textColor
    }
    func changeText() -> UIColor{

        let whiteOrBlack = Bool.random()
        return whiteOrBlack ? .black : .white
        }
}

