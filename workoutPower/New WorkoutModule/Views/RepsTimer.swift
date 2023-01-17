//
//  RepsTimer.swift
//  workoutPower
//
//  Created by Aleksandr  on 10.01.2023.
//

import UIKit

class RepsofTimer: UIView {
    
    private let repsTimer = UILabel(text: "Reps or timer")
    
    private let backView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBrown
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
   private let setsView = SliderView(name: "Sets", minValue: 0, maxValue: 10)
   private let repsView = SliderView(name: "Reps", minValue: 0, maxValue: 40)
   private let timerView = SliderView(name: "Timer", minValue: 0, maxValue: 360)
    
    private let repeatOrTimerLabel = UILabel(text: "Choose repeat or timer")

    private var stackView = UIStackView()
    
    public var (sets, reps, timer) = (0, 0, 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        repeatOrTimerLabel.textAlignment = .center
        
        timerView.isTimer = true
        
        addSubview(repsTimer)
        addSubview(backView)
        
        stackView = UIStackView(arrangedSubviews: [setsView, repeatOrTimerLabel, repsView, timerView],
                            
                                spacing: 20)
        stackView.axis = .vertical
        backView.addSubview(stackView)
        
    }
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            repsTimer.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            repsTimer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            repsTimer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            backView.topAnchor.constraint(equalTo: repsTimer.bottomAnchor, constant: 3),
            backView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),

            stackView.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15),
            stackView.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -15)
        ])
    }
}





