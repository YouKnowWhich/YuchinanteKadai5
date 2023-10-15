//
//  ViewController.swift
//  計算アプリ
//  Created by Yuchinante on 2023/10/12
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField! // ユーザーからの入力を受け取るためのテキストフィールド1
    @IBOutlet private weak var textField2: UITextField! // ユーザーからの入力を受け取るためのテキストフィールド2
    @IBOutlet private weak var resultLabel: UILabel! // 計算結果を表示するためのラベル

    @IBAction private func calculationButton(_ sender: Any) {
        // textField1の入力値を Double に変換しようとする
        guard let text1 = Double(textField1.text ?? "") else {
            // 変換に失敗した場合、アラートを表示して処理を中断
            showAlert(message: "割られる数を入力して下さい")
            return
        }

        // textField2の入力値を Double に変換しようとする
        guard let text2 = Double(textField2.text ?? "") else {
            // 変換に失敗した場合、アラートを表示して処理を中断
            showAlert(message: "割る数を入力して下さい")
            return
        }

        // textField2が0の場合、ゼロ除算を防ぐためアラートを表示して処理を中断
        guard text2 != 0 else {
            showAlert(message: "割る数には0を入力しないで下さい")
            return
        }

        // textField1から整数値を取得し、textField2で指定された数で割った結果をresultLabelに表示
        resultLabel.text = "\(text1 / text2)"
    }

    // アラートメッセージを表示するためのメソッド
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
