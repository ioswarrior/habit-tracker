//
//  ViewController.swift
//  uikit-ios-diploma
//
//  Created by Muller Alexander on 06.04.2022.
//

import UIKit

class HabitsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNCTitle()
        setupRightBarButton()
    }
    
    private func setupNCTitle() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Сегодня"
    }
    
    func setupRightBarButton() {
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(barButtonAction))
        rightBarButton.tintColor = .systemPurple
        self.navigationItem.rightBarButtonItem  = rightBarButton
    }
    
    @objc func barButtonAction() {
        
    }
}
