//
//  StatisticTableViewCell.swift
//  workoutPower
//
//  Created by Aleksandr  on 19.12.2022.
//

import UIKit

class StatisticTableViewCell: UITableViewCell {
    
    let differenceLabel: UILabel = {
        let label = UILabel()
        label.text = "+2"
        label.font = .robotoMedium24()
        label.textColor = .specialGreen
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Biceps"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let beforeLabel = UILabel(text: "Before: 18")
    private let nowLabel = UILabel(text: "Now: 20")
    
    private var stackView = UIStackView()
    
    private let lineView: UIView = {
       let view = UIView()
        view.backgroundColor = .specialLine
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(differenceLabel)
        addSubview(nameLabel)
//        beforeLabel.backgroundColor = .red
//        nowLabel.backgroundColor = .red
        stackView = UIStackView(arrangedSubviews: [beforeLabel, nowLabel],
                                spacing: 10)
//        stackView.alignment = .leading
//        stackView.backgroundColor = .blue
        addSubview(stackView)
        addSubview(lineView)
    }

    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            
//            beforeLabel.widthAnchor.constraint(equalToConstant: 70),
            
            differenceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            differenceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            differenceLabel.widthAnchor.constraint(equalToConstant: 50),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: differenceLabel.leadingAnchor, constant: -20),
            
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            stackView.trailingAnchor.constraint(equalTo: differenceLabel.leadingAnchor, constant: -10),
            
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}



