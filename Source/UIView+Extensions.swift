//
//  UIView+Extensions.swift
//  UnlockSlider
//
//  Created by Konstantin Stolyarenko on 13.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - UIView Constraints Extension

extension UIView {

    // MARK: - Internal Methods

    func pinEdges(to view: UIView, constant: CGFloat = .zero) {
        pinEdges(to: view, top: constant, leading: constant, bottom: constant, trailing: constant)
    }

    func pinEdges(to view: UIView,
                  top: CGFloat = .zero,
                  leading: CGFloat = .zero,
                  bottom: CGFloat = .zero,
                  trailing: CGFloat = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -trailing).isActive = true
    }

    func pin(top: NSLayoutYAxisAnchor? = nil,
             topConstant: CGFloat = .zero,
             bottom: NSLayoutYAxisAnchor? = nil,
             bottomConstant: CGFloat = .zero,
             leading: NSLayoutXAxisAnchor? = nil,
             leadingpConstant: CGFloat = .zero,
             trailing: NSLayoutXAxisAnchor? = nil,
             trailingConstant: CGFloat = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: bottomConstant).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: leadingpConstant).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: trailingConstant).isActive = true
        }
    }
}
