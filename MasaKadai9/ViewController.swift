//
//  ViewController.swift
//  MasaKadai9
//
//  Created by Mina on 2023/02/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var selectLabel: UILabel!

    @IBAction private func selectDone(segue: UIStoryboardSegue) {

        guard let select = segue.identifier else {
            assertionFailure("segue.identifier is nil.")
            return
        }

        switch select {
        case "tokyo":
            selectLabel.text = "東京都"
        case "kanagawa":
            selectLabel.text = "神奈川県"
        case "saitama":
            selectLabel.text = "埼玉県"
        case "chiba":
            selectLabel.text = "千葉県"
        default:
            assertionFailure("segue.identifier is invalid.")
        }
    }

    @IBAction private func exitCancel(segue: UIStoryboardSegue) {}

}
