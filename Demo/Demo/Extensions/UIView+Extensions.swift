//
//  UIView+Extensions.swift
//  Demo
//
//  Created by Konstantin Stolyarenko on 14.09.2023.
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
}
