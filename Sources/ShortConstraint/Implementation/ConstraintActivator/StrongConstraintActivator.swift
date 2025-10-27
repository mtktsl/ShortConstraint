//
//  StrongConstraintActivator.swift
//  DecKit
//
//  Created by Metin Tarık Kiki on 25.10.2025.
//

import UIKit

@MainActor
final class StrongConstraintActivator: ConstraintActivatorBase {
    
    let view: UIView
    
    init(view: UIView) {
        self.view = view
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override var sourceView: UIView {
        return view
    }
}
