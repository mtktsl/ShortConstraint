//
//  ConstraintActivatorBase.swift
//  DecKit
//
//  Created by Metin Tarık Kiki on 25.10.2025.
//

import UIKit

@MainActor
class ConstraintActivatorBase: ShortConstraintProtocol {
    
    private static var defaultConstraints: [ConstraintCase: [NSLayoutConstraint]] {
        [
            .leading: [],
            .trailing: [],
            
            .left: [],
            .right: [],
            
            .top: [],
            .bottom: [],
            
            .width: [],
            .height: [],
            
            .centerX: [],
            .centerY: [],
            
            .firstBaseline: [],
            .lastBaseline: []
        ]
    }
    
    var sourceView: UIView {
        return UIView()
    }
    
    private var activatedConstraints: [ConstraintCase: [NSLayoutConstraint]] = ConstraintActivatorBase.defaultConstraints
    
    private func getConstraints(_ targetTypes: [ConstraintCase]) -> [NSLayoutConstraint] {
        return targetTypes.flatMap( { activatedConstraints[$0] ?? [] } )
    }
    
    public func get(_ constraintTypes: ConstraintCase...) -> [NSLayoutConstraint] {
        return getConstraints(constraintTypes)
    }
    
    @discardableResult
    func activate(_ constraintTypes: ConstraintCase...) -> ShortConstraintProtocol {
        if constraintTypes.isEmpty {
            
            for element in activatedConstraints {
                NSLayoutConstraint.activate(element.value)
            }
            
        } else {
            NSLayoutConstraint.activate(getConstraints(constraintTypes))
        }
        
        return self
    }
    
    @discardableResult
    func deactivate(_ constraintTypes: ConstraintCase...) -> ShortConstraintProtocol {
        if constraintTypes.isEmpty {
            
            for element in activatedConstraints {
                NSLayoutConstraint.deactivate(element.value)
            }
            
        } else {
            NSLayoutConstraint.deactivate(getConstraints(constraintTypes))
        }
        return self
    }
    
    @discardableResult
    func get(_ constraintType: ConstraintCase, at index: Int) -> NSLayoutConstraint? {
        let targetConstraints = activatedConstraints[constraintType] ?? []
        return if !targetConstraints.isEmpty
                    && index >= targetConstraints.startIndex
                    && index < targetConstraints.endIndex {
            targetConstraints[index]
        } else {
            nil
        }
    }
    
    @discardableResult
    func getExcept(_ constraintTypes: ConstraintCase...) -> [NSLayoutConstraint] {
        let targetConstraints = ConstraintCase.allCases.filter( { !constraintTypes.contains($0) } )
        return getConstraints(targetConstraints)
    }
    
    @discardableResult
    func getFirst(_ constraintType: ConstraintCase) -> NSLayoutConstraint? {
        return activatedConstraints[constraintType]?.first
    }
    
    @discardableResult
    func getLast(_ constraintType: ConstraintCase) -> NSLayoutConstraint? {
        return activatedConstraints[constraintType]?.last
    }
    
    public func getAll() -> [ConstraintCase : [NSLayoutConstraint]] {
        return activatedConstraints
    }
    
    private func appendConstraint(type: ConstraintCase, constraint: NSLayoutConstraint) {
        activatedConstraints[type]?.append(constraint)
    }
    
    @discardableResult
    func leading(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.leadingAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .leading, constraint: constraint)
        return self
    }
    
    @discardableResult
    func leading(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.leadingAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .leading, constraint: constraint)
        return self
    }
    
    @discardableResult
    func leading(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.leadingAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .leading, constraint: constraint)
        return self
    }
    
    @discardableResult
    func leading(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .leading, constraint: constraint)
        return self
    }
    
    @discardableResult
    func leading(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.leadingAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .leading, constraint: constraint)
        return self
    }
    
    @discardableResult
    func leading(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .leading, constraint: constraint)
        return self
    }
    
    @discardableResult
    func trailing(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.trailingAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .trailing, constraint: constraint)
        return self
    }
    
    @discardableResult
    func trailing(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.trailingAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .trailing, constraint: constraint)
        return self
    }
    
    @discardableResult
    func trailing(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.trailingAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .trailing, constraint: constraint)
        return self
    }
    
    @discardableResult
    func trailing(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .trailing, constraint: constraint)
        return self
    }
    
    @discardableResult
    func trailing(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.trailingAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .trailing, constraint: constraint)
        return self
    }
    
    @discardableResult
    func trailing(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .trailing, constraint: constraint)
        return self
    }
    
    @discardableResult
    func left(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.leftAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .left, constraint: constraint)
        return self
    }
    
    @discardableResult
    func left(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.leftAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .left, constraint: constraint)
        return self
    }
    
    @discardableResult
    func left(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.leftAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .left, constraint: constraint)
        return self
    }
    
    @discardableResult
    func left(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .left, constraint: constraint)
        return self
    }
    
    @discardableResult
    func left(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.leftAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .left, constraint: constraint)
        return self
    }
    
    @discardableResult
    func left(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.leftAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .left, constraint: constraint)
        return self
    }
    
    @discardableResult
    func right(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.rightAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .right, constraint: constraint)
        return self
    }
    
    @discardableResult
    func right(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.rightAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .right, constraint: constraint)
        return self
    }
    
    @discardableResult
    func right(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.rightAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .right, constraint: constraint)
        return self
    }
    
    @discardableResult
    func right(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .right, constraint: constraint)
        return self
    }
    
    @discardableResult
    func right(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.rightAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .right, constraint: constraint)
        return self
    }
    
    @discardableResult
    func right(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.rightAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .right, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerX(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.centerXAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .centerX, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerX(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.centerXAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .centerX, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerX(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.centerXAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .centerX, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerX(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.centerXAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .centerX, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerX(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.centerXAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .centerX, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerX(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.centerXAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .centerX, constraint: constraint)
        return self
    }
    
    @discardableResult
    func top(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.topAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .top, constraint: constraint)
        return self
    }
    
    @discardableResult
    func top(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.topAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .top, constraint: constraint)
        return self
    }
    
    @discardableResult
    func top(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.topAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .top, constraint: constraint)
        return self
    }
    
    @discardableResult
    func top(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .top, constraint: constraint)
        return self
    }
    
    @discardableResult
    func top(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.topAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .top, constraint: constraint)
        return self
    }
    
    @discardableResult
    func top(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.topAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .top, constraint: constraint)
        return self
    }
    
    @discardableResult
    func bottom(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.bottomAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .bottom, constraint: constraint)
        return self
    }
    
    @discardableResult
    func bottom(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.bottomAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .bottom, constraint: constraint)
        return self
    }
    
    @discardableResult
    func bottom(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.bottomAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .bottom, constraint: constraint)
        return self
    }
    
    @discardableResult
    func bottom(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .bottom, constraint: constraint)
        return self
    }
    
    @discardableResult
    func bottom(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.bottomAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .bottom, constraint: constraint)
        return self
    }
    
    @discardableResult
    func bottom(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .bottom, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerY(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.centerYAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .centerY, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerY(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.centerYAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .centerY, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerY(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.centerYAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .centerY, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerY(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.centerYAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .centerY, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerY(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.centerYAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .centerY, constraint: constraint)
        return self
    }
    
    @discardableResult
    func centerY(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.centerYAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .centerY, constraint: constraint)
        return self
    }
    
    @discardableResult
    func firstBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.firstBaselineAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .firstBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func firstBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.firstBaselineAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .firstBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func firstBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.firstBaselineAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .firstBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func firstBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.firstBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .firstBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func firstBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.firstBaselineAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .firstBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func firstBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.firstBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .firstBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func lastBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.lastBaselineAnchor.constraint(equalTo: anchor)
        appendConstraint(type: .lastBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func lastBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.lastBaselineAnchor.constraint(equalTo: anchor, constant: c)
        appendConstraint(type: .lastBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func lastBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.lastBaselineAnchor.constraint(greaterThanOrEqualTo: anchor)
        appendConstraint(type: .lastBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func lastBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.lastBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .lastBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func lastBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol {
        let constraint = sourceView.lastBaselineAnchor.constraint(lessThanOrEqualTo: anchor)
        appendConstraint(type: .lastBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func lastBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.lastBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: c)
        appendConstraint(type: .lastBaseline, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(equalToConstant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(equalToConstant: c)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(greaterThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(greaterThanOrEqualToConstant: c)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(lessThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(lessThanOrEqualToConstant: c)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(equalTo: anchor, multiplier: m)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: m)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: m)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(equalTo: anchor, multiplier: m, constant: c)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: m, constant: c)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func width(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: m, constant: c)
        appendConstraint(type: .width, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(equalToConstant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(equalToConstant: c)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(greaterThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(greaterThanOrEqualToConstant: c)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(lessThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(lessThanOrEqualToConstant: c)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(equalTo: anchor, multiplier: m)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: m)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: m)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(equalTo: anchor, multiplier: m, constant: c)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: m, constant: c)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func height(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol {
        let constraint = sourceView.heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: m, constant: c)
        appendConstraint(type: .height, constraint: constraint)
        return self
    }
    
    @discardableResult
    func fitting(to superView: UIView, insets: NSDirectionalEdgeInsets) -> any ShortConstraintProtocol {
        self.leading(equalTo: superView.leadingAnchor, constant: insets.leading)
            .top(equalTo: superView.topAnchor, constant: insets.top)
            .trailing(equalTo: superView.trailingAnchor, constant: insets.trailing)
            .bottom(equalTo: superView.bottomAnchor, constant: insets.bottom)
    }
    
    func clear(deactivate: Bool) {
        if deactivate {
            self.deactivate()
        }
        
        activatedConstraints = ConstraintActivatorBase.defaultConstraints
    }
}
