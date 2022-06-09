//
//  ViewController.swift
//  MVVM
//
//  Created by ПавелК on 07.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()
    let viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
        addTargets()
    }
    
    func addTargets () {
        mainView.addChildButton.addTarget(self, action: #selector(addChildToTable), for: .touchUpInside)
    }
    
    @objc func addChildToTable () {
        guard let name = mainView.twoFieldsView.nameView.textField.text else {return}
        guard let age = mainView.twoFieldsView.ageView.textField.text else {return}
        guard let age = Int(age) else {return}
        viewModel.addChild(name: name, age: age)
        mainView.tableView.reloadData()
    }
    
    @objc func deleteChild (sender : CustomButton) {
        viewModel.children.remove(at: sender.indexPath?.row ?? 0 )
        mainView.tableView.reloadData()
    }
    
    
    
}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if !viewModel.children.isEmpty {
            return 2
        } else {return 1}
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 :
           return self.viewModel.children.count
        case 1 :
            return 1
        default : return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0 :
            let cell = viewModel.childCellGenerate(tableView: tableView, indexPath: indexPath)
            cell.deleteButton.addTarget(self, action: #selector(deleteChild), for: .touchUpInside)
            return cell
        case 1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: DeleteCell.reuseId, for: indexPath) as! DeleteCell
            return cell
        default :
            let cell = viewModel.childCellGenerate(tableView: tableView, indexPath: indexPath)
            cell.deleteButton.addTarget(self, action: #selector(deleteChild), for: .touchUpInside)
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0 :
            return 150
        case 1 :
            return 55
        default : return 150
        }
    }
}
