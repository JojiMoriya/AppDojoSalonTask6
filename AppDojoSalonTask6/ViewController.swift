//
//  ViewController.swift
//  AppDojoSalonTask6
//
//  Created by 守屋譲司 on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var randomNumberLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    private var answer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.value = 50
        
        makeRandomNumber()
    }

    @IBAction func judgeButtonPressed(_ sender: UIButton) {
        
        let yourValue = Int(slider.value)
        
        let firstLine: String
        
        if yourValue == answer {
            firstLine = "あたり！"
        } else {
            firstLine = "はずれ！"
        }
        
        alert(message: "\(firstLine)\nあなたの結果: \(yourValue)")
        
        makeRandomNumber()
        slider.value = 50
    }
    
    func makeRandomNumber() {
        answer = Int.random(in: 1...100)
        randomNumberLabel.text = String(answer)
    }
    
    func alert (message: String) {
        let alert: UIAlertController = UIAlertController(title: "結果", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "再挑戦", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

