//
//  InfoViewController.swift
//  uikit-ios-diploma
//
//  Created by Muller Alexander on 06.04.2022.
//

import UIKit

class InfoViewController: UIViewController {
    override func loadView() {
        view = InfoScrollView(frame: .zero)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Информация"
    }
}
