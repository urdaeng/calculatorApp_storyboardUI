//
//  ViewController.swift
//  calculatorApp2
//
//  Created by 강유정 on 6/26/24.
//

import UIKit

class ViewController: UIViewController {

    private var number = ""
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btnPuls: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btnDivsion: UIButton!
    @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var btnEqual: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 버튼 액션
    @IBAction func btn1Tapped(_ sender: Any) {
        self.number += "1"
        label.text = "\(number)"
    }
    
    @IBAction func btn2Tapped(_ sender: Any) {
        self.number += "2"
        label.text = "\(number)"
    }
    
    @IBAction func btn3Tapped(_ sender: Any) {
        self.number += "3"
        label.text = "\(number)"
    }
    
    @IBAction func btn4Tapped(_ sender: Any) {
        self.number += "4"
        label.text = "\(number)"
    }
    
    @IBAction func btn5Tapped(_ sender: Any) {
        self.number += "5"
        label.text = "\(number)"
    }
    
    @IBAction func btn6Tapped(_ sender: Any) {
        self.number += "6"
        label.text = "\(number)"
    }
    
    @IBAction func btn7Tapped(_ sender: Any) {
        self.number += "7"
        label.text = "\(number)"
    }
    
    @IBAction func btn8Tapped(_ sender: Any) {
        self.number += "8"
        label.text = "\(number)"
    }
    
    @IBAction func btn9Tapped(_ sender: Any) {
        self.number += "9"
        label.text = "\(number)"
    }
    
    @IBAction func btn0Tapped(_ sender: Any) {
        self.number += "0"
        label.text = "\(number)"
    }
    
    @IBAction func btnPulsTapped(_ sender: Any) {
        self.number += "+"
        label.text = "\(number)"
    }
    
    @IBAction func btnMinusTapped(_ sender: Any) {
        self.number += "-"
        label.text = "\(number)"
    }
    
    @IBAction func btnMultiplyTapped(_ sender: Any) {
        self.number += "*"
        label.text = "\(number)"
    }
    
    @IBAction func btnDivsionTapped(_ sender: Any) {
        self.number += "/"
        label.text = "\(number)"
    }
    
    @IBAction func BtnACTapped(_ sender: Any) {
        self.number = "0"
        label.text = "\(number)"
        
        // 첫 입력이 아니라면 "0" 제거
        if self.number == "0" {
            self.number = ""
        }
    }
    
    @IBAction func btnEqualTapped(_ sender: Any) {
        guard let result = calculate(expression: number) else { return }
        
        label.text = "\(result)"
        self.number = "\(result)"
        
        // 문자열이 비어있지 않다면 빈 문자열로 변경
        if self.number.isEmpty {
        } else {
            self.number = ""
        }
    }
    
    // 수식 문자열을 넣으면 계산해주는 메서드
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
}

