//
//  UITableView+Extensions.swift
//  iOS-MVVM-Guideline
//
//  Created by Armand Kamffer on 2021/04/30.
//

import Foundation
import UIKit

extension UITableView {
    public func dequeuedCell<CellType : UITableViewCell>(ofType cellType: CellType.Type, reuseIdentifier: String = CellType.defaultReuseIdentifier, indexPath: IndexPath) -> CellType {
        if let cell = dequeueReusableCell(withIdentifier: reuseIdentifier) as? CellType { return cell }
        if Bundle(for: cellType).path(forResource: String(describing: CellType.self), ofType: "nib") != nil {
            let nib = UINib(nibName: String(describing: CellType.self), bundle: Bundle(for: cellType))
            register(nib, forCellReuseIdentifier: reuseIdentifier)
        } else {
            register(cellType, forCellReuseIdentifier: reuseIdentifier)
        }
        guard let registeredCell = dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? CellType else {
            register(CellType.self, forCellReuseIdentifier: reuseIdentifier)
            guard let registeredCell = dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? CellType else {
                return CellType()
            }
            return registeredCell
        }
        return registeredCell
    }
}
