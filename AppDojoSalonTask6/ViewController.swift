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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.value = 50
        
        makeRandomNumber()
    }

    @IBAction func judgeButtonPressed(_ sender: UIButton) {
        
        if Int(slider.value) == Int(randomNumberLabel.text!) {
            alert(message: "あたり！\nあなたの結果: \(Int(slider.value))")
        } else {
            alert(message: "はずれ！\nあなたの結果: \(Int(slider.value))")
        }
        
        makeRandomNumber()
        slider.value = 50
    }
    
    func makeRandomNumber() {
        let randomValue = Int.random(in: 1...100)
        randomNumberLabel.text = String(randomValue)
    }
    
    func alert (message: String) {
        let alert: UIAlertController = UIAlertController(title: "結果", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "再挑戦", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

