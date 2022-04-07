//
//  TrackViewController.swift
//  uikit-ios-diploma
//
//  Created by Muller Alexander on 06.04.2022.
//

import UIKit

class HabitDetailsViewController: UIViewController {
    private(set) var habits = ["Вчера", "Позавчера", "13 апреля 2022 года", "14 мая 2022 года"]
    
    private(set) lazy var tableView = view as! HabitTableView
    
    func setupRightBarButton() {
        let rightBarButton = UIBarButtonItem(title: "Править", style: .plain, target: self, action: #selector(barButtonAction))
        self.navigationItem.rightBarButtonItem  = rightBarButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupRightBarButton()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func loadView() {
        view = HabitTableView(frame: .zero, style: .grouped)
    }
    
    @objc func barButtonAction() {
        let habitCreateVC = HabitCreateViewController(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(habitCreateVC, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension HabitDetailsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HabitCell") as? HabitTableViewCell else { preconditionFailure() }
        cell.textLabel?.text = habits[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}


// MARK: - UITableViewDelegate
extension HabitDetailsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Активность"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { preconditionFailure() }
        cell.accessoryType = .checkmark
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.allowsMultipleSelection = true
        guard let cell = tableView.cellForRow(at: indexPath) else { preconditionFailure() }
        cell.accessoryType = .none
    }
}
