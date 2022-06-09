//
//  CustomTextView.swift
//  MVVM
//
//  Created by ПавелК on 08.04.2022.
//

import UIKit

class CustomTitleView: UIView {
 enum FieldType {
        case name
        case age
    }
    let textField = UITextField(placeholder: "")
    let label = UILabel(text: "", font: FontsLibrary.titleText)
    let type : FieldType
    init (type : FieldType) {
        self.type = type
        super.init(frame: CGRect())
        setViews()
        setConstraints()
    }
    
    func setViews () {
        switch type {
        case .name:
            label.text = "Имя"
            textField.placeholder = "Введите имя"
        case .age:
            label.text = "Возраст"
            textField.placeholder = "Введите возраст"
            textField.keyboardType = .numberPad
        }
        backgroundColor = .white
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 2
        layer.shadowOffset = CGSize(width: 0, height: 0)
        textField.borderStyle = .none
        textField.backgroundColor = .clear
        label.font = FontsLibrary.fieldButton
    }
    
    func setConstraints () {
        let stack = UIStackView(views: [label,textField], axis: .vertical, spacing: 4)
        
        
        Helper.addSub(views: [stack], to: self)
        Helper.tamicOff(views: [stack])
        
        
        stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4).isActive = true
        stack.topAnchor.constraint(equalTo: topAnchor, constant: 2).isActive = true
        stack.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
