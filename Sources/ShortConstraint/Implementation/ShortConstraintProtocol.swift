//
//  ShortConstraintProtocol.swift
//  DecKit
//
//  Created by Metin Tarık Kiki on 25.10.2025.
//

import UIKit

@MainActor
public protocol ShortConstraintProtocol: AnyObject {

    @discardableResult func leading(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func leading(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func leading(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func leading(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func leading(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func leading(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func trailing(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func trailing(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func trailing(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func trailing(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func trailing(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func trailing(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func left(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func left(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func left(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func left(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func left(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func left(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func right(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func right(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func right(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func right(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func right(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func right(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func centerX(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func centerX(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func centerX(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func centerX(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func centerX(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func centerX(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func top(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func top(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func top(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func top(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func top(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func top(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func bottom(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func bottom(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func bottom(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func bottom(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func bottom(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func bottom(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func centerY(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func centerY(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func centerY(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func centerY(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func centerY(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func centerY(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func firstBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func firstBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func firstBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func firstBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func firstBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func firstBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func lastBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func lastBaseline(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func lastBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func lastBaseline(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func lastBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> ShortConstraintProtocol
    @discardableResult func lastBaseline(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(equalToConstant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(greaterThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(lessThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func width(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(equalToConstant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(greaterThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(lessThanOrEqualToConstant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func height(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> ShortConstraintProtocol
    @discardableResult func fitting(to superView: UIView, insets: NSDirectionalEdgeInsets) -> ShortConstraintProtocol
    
    @discardableResult func activate(_ constraintTypes: ConstraintCase...) -> ShortConstraintProtocol
    @discardableResult func deactivate(_ constraintTypes: ConstraintCase...) -> ShortConstraintProtocol
    
    func get(_ constraintType: ConstraintCase...) -> [NSLayoutConstraint]
    func get(_ constraintType: ConstraintCase, at index: Int) -> NSLayoutConstraint?
    func getExcept(_ constraintTypes: ConstraintCase...) -> [NSLayoutConstraint]
    func getFirst(_ constraintType: ConstraintCase) -> NSLayoutConstraint?
    func getLast(_ constraintType: ConstraintCase) -> NSLayoutConstraint?
    func getAll() -> [ConstraintCase: [NSLayoutConstraint]]
    
    /// Removes all of the NSLayoutConstraint references from the inner dictionary.
    ///
    /// - Parameter deactivate: If true then deactivates the constraints as well.
    func clear(deactivate: Bool)
    
    var sourceView: UIView { get }
}
