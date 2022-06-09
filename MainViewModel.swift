//
//  MainViewModel.swift
//  MVVM
//
//  Created by ПавелК on 07.04.2022.
//

import UIKit

class MainViewModel {
    
    var children = [Person]()
    

    func childCellGenerate (tableView : UITableView,indexPath : IndexPath) -> ChildCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ChildCell.reuseId, for: indexPath) as! ChildCell
        cell.setTag(cellIndex: indexPath.row)
        cell.twoFieldView.ageView.textField.text = "\(children[indexPath.row].age)"
        cell.twoFieldView.nameView.textField.text = children[indexPath.row].name
        cell.deleteButton.indexPath = indexPath
        return cell
    }
    
    func addChild(name : String, age : Int) {
        let person = Person(name: name, age: age)
        self.children.append(person)
    }
    
    
}
