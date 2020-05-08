//
//  ViewController.swift
//  Calculator
//
//  Created by Takuro Nishino on 2020/05/07.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ビューがロードされた時点で式と答えのラベルは空にする
        formulaLabel.text = ""
        answerLabel.text = ""
    }

    @IBAction func inputFormula(_ sender: UIButton) {
        // ボタン（Cと=以外）が押されたら式を表示する
        guard let formulaText = formulaLabel.text else {
            return
        }
        guard let senderedText = sender.titleLabel?.text else {
            return
        }
        formulaLabel.text = formulaText + senderedText
    }
    @IBAction func clearCalculation(_ sender: UIButton) {
    }
    @IBAction func calculateAnswer(_ sender: UIButton) {
    }
}

