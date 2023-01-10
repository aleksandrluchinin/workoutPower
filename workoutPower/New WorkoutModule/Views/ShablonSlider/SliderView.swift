//
//  SliderView.swift
//  workoutPower
//
//  Created by Aleksandr  on 10.01.2023.
//

import UIKit

class SliderView: UIView {
    
    private let nameLabel = UILabel(text: "Name")
    private let numberlabel = UILabel(text: "0")
    private lazy var slider = GreenSlider(minValue: 0, maxValue: 10)
    private var stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(name: String, minValue: Float, maxValue: Float) {
        self.init(frame: .zero)
        nameLabel.text = name
        slider.minimumValue = minValue
        slider.maximumValue = maxValue
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderChanded), for: .valueChanged)
        
        let labelStackView = UIStackView(arrangedSubviews: [nameLabel, numberlabel], spacing: 10)
        labelStackView.axis = .horizontal
        labelStackView.distribution = .equalSpacing
        
        stackView = UIStackView(arrangedSubviews: [labelStackView, slider], spacing: 10)
        stackView.axis = .vertical
        
        addSubview(stackView)
    }
    
    @objc private func sliderChanded() {
        print(slider.value)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
 
