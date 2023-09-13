//
//  ViewController.swift
//
//  Copyright (c) 2020 Konstantin Stolyarenko
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
import UnlockSlider

// MARK: - DemoViewController

class DemoViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet private var sliderContainer: UIView!

    // MARK: - Private Properties

    private var isEmergencySOSActive = false

    // MARK: - ViewController Lifecycle Properties

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // MARK: - ViewController Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        setupSlider()
        updateLabel()
    }

    // MARK: - Setup Methods

    private func setupUI() {
        titleLabel.text = Const.Demo.title
        view.backgroundColor = .redColor
    }

    private func setupSlider() {
        let slider = UnlockSlider(frame: sliderContainer.frame, delegate: self)

        slider.isDoubleSideEnabled = true
        slider.isImageViewRotating = true
        slider.isTextChangeAnimating = true
        slider.isDebugPrintEnabled = false
        slider.isShowSliderText = true
        slider.isEnabled = true

        slider.sliderAnimationVelocity = AnimationTime.veryFast.rawValue
        slider.sliderViewTopDistance = .zero
        slider.sliderImageViewTopDistance = 4.0
        slider.sliderImageViewStartingDistance = 4.0
        slider.sliderTextLabelLeadingDistance = .zero
        slider.sliderCornerRadius = sliderContainer.frame.height / 2

        slider.sliderBackgroundColor = .white
        slider.sliderBackgroundViewTextColor = .redColor
        slider.sliderDraggedViewTextColor = .redColor
        slider.sliderDraggedViewBackgroundColor = .white
        slider.sliderImageViewBackgroundColor = .redColor
        slider.sliderImageTintColor = .white

        slider.setSliderImage(UIImage(systemName: "chevron.right")?.applyingSymbolConfiguration(.init(weight: .medium)))
        slider.setSliderFont(.systemFont(ofSize: 15.0))
        slider.setSliderBackgroundViewTitle(Const.Demo.activateSliderTitle)
        slider.setSliderDraggedViewTitle(Const.Demo.deactivateSliderTitle)

        view.addSubview(slider)
    }

    // MARK: - Private Methods

    private func updateLabel() {
        descriptionLabel.text = isEmergencySOSActive ? Const.Demo.emergencySOSActiveTitle : Const.Demo.emergencySOSInactiveTitle
    }
}

// MARK: - UnlockSliderDelegate

extension DemoViewController: UnlockSliderDelegate {

    func unlockSlider(_ slider: UnlockSlider, didFinishSlidingAt position: UnlockSliderPosition) {
        isEmergencySOSActive = position.isRightPosition
        updateLabel()
    }
}
