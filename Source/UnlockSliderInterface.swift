//
//  UnlockSliderInterface.swift
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

// MARK: - UnlockSliderInterface Protocol

public protocol UnlockSliderInterface {
    /// Flags
    var isDoubleSideEnabled: Bool { get set }
    var isImageViewRotating: Bool { get set }
    var isTextChangeAnimating: Bool { get set }
    var isDebugPrintEnabled: Bool { get set }
    var isShowSliderText: Bool { get set }
    var isEnabled: Bool { get set }

    /// Parameters
    var sliderAnimationVelocity: Double { get set }
    var sliderViewTopDistance: CGFloat { get set }
    var sliderImageViewTopDistance: CGFloat { get set }
    var sliderImageViewStartingDistance: CGFloat { get set }
    var sliderTextLabelLeadingDistance: CGFloat { get set }
    var sliderCornerRadius: CGFloat { get set }

    /// Colors
    var sliderBackgroundColor: UIColor { get set }
    var sliderBackgroundViewTextColor: UIColor { get set }
    var sliderDraggedViewTextColor: UIColor { get set }
    var sliderDraggedViewBackgroundColor: UIColor { get set }
    var sliderImageViewBackgroundColor: UIColor { get set }
    var sliderImageTintColor: UIColor { get set }

    /// Methods
    func setSliderImage(_ image: UIImage?)
    func setSliderBackgroundViewTitle(_ title: String?)
    func setSliderDraggedViewTitle(_ title: String?)
    func setSliderFont(_ font: UIFont)
}
