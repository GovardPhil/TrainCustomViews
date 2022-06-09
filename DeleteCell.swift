//
//  DeleteCell.swift
//  MVVM
//
//  Created by ПавелК on 09.04.2022.
//

import UIKit

class DeleteCell: UITableViewCell {
static let reuseId = "DeleteCell"
    let cleanButton = CustomButton(title: "Очистить",borderColor: ColorsLibrary.redButton.cgColor, textColor: ColorsLibrary.redButton)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cleanButton.layer.borderWidth = 1.5
        Helper.addSub(views: [cleanButton], to: self)
        Helper.tamicOff(views: [cleanButton])
        
   
        cleanButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cleanButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 40).isActive = true
        cleanButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -40).isActive = true
        cleanButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
        
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    
    
    
}
