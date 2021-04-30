//
//  Array+Extensions.swift
//  iOS-MVVM-Guideline
//
//  Created by Armand Kamffer on 2021/04/30.
//

import Foundation

extension Array {
    // check if  index might be out of bounds and returns nil if it is
    public func element(at index: Int) -> Element? {
        if indices.contains(index) {
            return self[index]
        } else {
            return nil
        }
    }
}
