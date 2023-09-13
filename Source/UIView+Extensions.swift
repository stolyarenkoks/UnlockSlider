//
//  UIView+Extensions.swift
//  UnlockSlider
//
//  Copyright © 2023 Konstantin Stolyarenko
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
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
