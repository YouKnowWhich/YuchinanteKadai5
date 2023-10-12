//
//  ViewController.swift
//  
//  
//  Created by Yuchinante on 2023/10/12
//  
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField! // ユーザーからの入力を受け取るためのテキストフィールド1
    @IBOutlet private weak var textField2: UITextField! // ユーザーからの入力を受け取るためのテキストフィールド2
    @IBOutlet private weak var resultLabel: UILabel! // 計算結果を表示するためのラベル

    @IBAction private func calculationButton(_ sender: Any) {
        // textField1が空の場合
        guard let text1 = textField1.text, !text1.isEmpty else {
            showAlert(message: "割られる数を入力して下さい")
            return
        }

        // textField2が空の場合
        guard let text2 = textField2.text, !text2.isEmpty else {
            showAlert(message: "割る数を入力して下さい")
            return
        }

        // textField2が0の場合
        guard let number = Int(text2), number != 0 else {
            showAlert(message: "割る数には0を入力しないで下さい")
            return
        }

        // textField1から整数値を取得し、textField2で指定された数で割った結果をresultLabelに表示
        resultLabel.text = "\(Int(text1)! / number)"
    }

    // アラートメッセージを表示するためのメソッド
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
