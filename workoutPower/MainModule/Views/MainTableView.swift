//
//  MainTableView.swift
//  workoutPower
//
//  Created by Aleksandr  on 15.12.2022.
//

import UIKit

class MainTableView: UIView, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idTableViewCell, for: indexPath) as? WorkoutTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .none
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.showsVerticalScrollIndicator = false
        tableView.delaysContentTouches = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let idTableViewCell = "idTableViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setDelegates()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(tableView)
        tableView.register(WorkoutTableViewCell.self, forCellReuseIdentifier: idTableViewCell)
    }
    
    private func setDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension MainTableView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}


