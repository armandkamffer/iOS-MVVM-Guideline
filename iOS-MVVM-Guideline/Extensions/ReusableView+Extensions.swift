//
//  ReusableView+Extensions.swift
//  iOS-MVVM-Guideline
//
//  Created by Armand Kamffer on 2021/04/30.
//

import Foundation
import UIKit

public protocol ReusableView: class {}

extension ReusableView where Self: UITableViewCell {
    public static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

extension ReusableView where Self: UITableViewHeaderFooterView {
    public static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView {}
extension UITableViewHeaderFooterView: ReusableView {}
