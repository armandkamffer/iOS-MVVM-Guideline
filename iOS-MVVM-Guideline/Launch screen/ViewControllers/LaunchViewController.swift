//
//  LaunchViewController.swift
//  iOS-MVVM-Guideline
//
//  Created by Armand Kamffer on 2021/04/30.
//

import UIKit

class LaunchViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        title = "iOS MVVM Guideline App Scenarios"
        // TODO: Localise title
    }
    
    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK: - TableView DataSource methods
extension LaunchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        LaunchRows.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeuedCell(ofType: UITableViewCell.self, indexPath: indexPath)
        cell.textLabel?.text = LaunchRows.allCases[indexPath.row].rawValue
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}

// MARK: - TableView Delegate methods
extension LaunchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = LaunchRows.allCases[indexPath.row]
        
        switch row {
        case .simpleStructs:
            didTapSimpleStructs()
        case .simpleEnums:
            didTapSimpleEnums()
        case .complexClasses:
            didTapComplexClasses()
        case .complexEnums:
            didTapComplexEnums()
        }
    }
}

// MARK: - DidTap Events
extension LaunchViewController {
    func didTapSimpleStructs() {
        // TODO: Navigate to simple structs scenario
    }
    
    func didTapSimpleEnums() {
        // TODO: Navigate to simple enums scenario
    }
    
    func didTapComplexClasses() {
        // TODO: Navigate to complex classes scenario
    }
    
    func didTapComplexEnums() {
        // TODO: Navigate to complex enums scenario
    }
}
