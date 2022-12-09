//
//  CalendarView.swift
//  workoutPower
//
//  Created by Aleksandr  on 09.12.2022.
//

import UIKit

class CalendarView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = #colorLiteral(red: 0.2421928048, green: 0.6150656343, blue: 0.5633327961, alpha: 1)
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 4
        layer.cornerRadius = 8
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension CalendarView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([

        ])
    }
}
