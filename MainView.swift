//
//  MainView.swift
//  MVVM
//
//  Created by ПавелК on 07.04.2022.
//

import UIKit

class MainView: UIView {
    let personalInfoLabel = UILabel(text: "Персональные данные", font: FontsLibrary.fieldButton)
    let twoFieldsView = CustomMainView()
    let childrenAmountLabel = UILabel(text: "Дети(макс.5)", font: FontsLibrary.fieldButton)
    let addChildButton = CustomButton(title: " Добавить ребенка", borderColor: ColorsLibrary.blueButton.cgColor, textColor: ColorsLibrary.blueButton)
    let tableView = UITableView()
    
    init () {
        super.init(frame: CGRect())
        setConstraints()
        setViews()
    }
    
    func setViews () {
        self.backgroundColor = .white
        self.tableView.separatorStyle = .none
        addChildButton.setImage(UIImage(systemName: "plus"), for: .normal)
        tableView.register(ChildCell.self, forCellReuseIdentifier: ChildCell.reuseId)
        tableView.register(DeleteCell.self, forCellReuseIdentifier: DeleteCell.reuseId)
    }
    
    func setConstraints () {
        let kidsStack = UIStackView(views: [childrenAmountLabel,addChildButton], axis: .horizontal, spacing: 8)
        kidsStack.heightAnchor.constraint(equalTo: addChildButton.heightAnchor).isActive = true
        let stack = UIStackView(views: [personalInfoLabel,twoFieldsView,kidsStack,tableView], axis: .vertical, spacing: 9)
        Helper.addSub(views: [stack], to: self)
        Helper.tamicOff(views: [stack])
        
        stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        stack.topAnchor.constraint(equalTo: topAnchor, constant: 48).isActive = true
        stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        
        twoFieldsView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        addChildButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
