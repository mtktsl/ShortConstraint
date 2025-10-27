//
//  WeakConstraintActivator.swift
//  DecKit
//
//  Created by Metin Tarık Kiki on 25.10.2025.
//

import UIKit

@MainActor
final class WeakConstraintActivator: ConstraintActivatorBase {
    
    weak var view: UIView?
    
    override var sourceView: UIView {
        return view ?? UIView()
    }
    
    init(view: UIView?) {
        self.view = view
        self.view?.translatesAutoresizingMaskIntoConstraints = false
    }
}
