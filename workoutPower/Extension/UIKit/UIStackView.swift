//
//  UIStackView.swift
//  workoutPower
//
//  Created by Aleksandr  on 10.12.2022.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = .horizontal
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
