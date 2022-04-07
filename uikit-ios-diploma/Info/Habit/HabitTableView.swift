//
//  HabitTableView.swift
//  uikit-ios-diploma
//
//  Created by Muller Alexander on 07.04.2022.
//

import UIKit

class HabitTableView: UITableView {

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        register()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HabitTableView {
    private func register() {
        register(HabitTableViewCell.self, forCellReuseIdentifier: "HabitCell")
    }
}
