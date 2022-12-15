//
//  CalendarCollectionViewCell.swift
//  workoutPower
//
//  Created by Aleksandr  on 10.12.2022.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    
    private let dayLabel: UILabel = {
        let label = UILabel()
        label.text = "We"
        label.font = UIFont(name: "Roboto-Bold", size: 16)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dayNumberlabel: UILabel = {
        let label = UILabel()
        label.text = "07"
        label.font = UIFont(name: "Roboto-Bold", size: 20)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                backgroundColor = .specialYellow
                dayLabel.textColor = .specialBlack
                dayNumberlabel.textColor = .specialDarkGreen
            } else {
                backgroundColor = #colorLiteral(red: 0.2421928048, green: 0.6150656343, blue: 0.5633327961, alpha: 1)
                dayLabel.textColor = .white
                dayNumberlabel.textColor = .white            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        layer.cornerRadius = 20
        
        addSubview(dayLabel)
        addSubview(dayNumberlabel)
        
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            dayLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            dayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            
            dayNumberlabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            dayNumberlabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        
        ])
    }
}
