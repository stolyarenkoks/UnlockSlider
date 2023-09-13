//
//  Const.swift
//  Demo
//
//  Created by Konstantin Stolyarenko on 13.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - AnimationTime Enum

enum AnimationTime: TimeInterval {
    case slowest = 1.0
    case extremelySlow = 0.9
    case verySlow = 0.8
    case quiteSlow = 0.7
    case slow = 0.6
    case `default` = 0.5
    case fast = 0.4
    case quiteFast = 0.3
    case veryFast = 0.2
    case extremelyFast = 0.1
    case fastest = 0.0
}

// MARK: - AlphaState Enum

enum AlphaState: CGFloat {
    case visible = 1.0
    case translucent = 0.5
    case invisible = 0.0
}

// MARK: - Const

struct Const {

    // MARK: - ViewControllers

    struct Demo {
        static let title = "Emergency SOS"

        static let emergencySOSActiveTitle = "Emergency SOS Active!"
        static let emergencySOSInactiveTitle = "Are you sure you want to activate an Emergency SOS?"

        static let activateSliderTitle = "  Slide to Activate"
        static let deactivateSliderTitle = "Slide to Deactivate"

        static let sliderNoteTitle = "Swipe to call Emergency Services"
    }
}
