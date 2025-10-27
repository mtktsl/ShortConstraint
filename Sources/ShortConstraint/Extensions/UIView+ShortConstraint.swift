//
//  UIView+ShortConstraint.swift
//  DecKit
//
//  Created by Metin Tarık Kiki on 25.10.2025.
//

import UIKit

public extension UIView {
    
    var constraint: ShortConstraintProtocol {
        StrongConstraintActivator(view: self)
    }
    
    var constraintWeak: ShortConstraintProtocol {
        WeakConstraintActivator(view: self)
    }
}
