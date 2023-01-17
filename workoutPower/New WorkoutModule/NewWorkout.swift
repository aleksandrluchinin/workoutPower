//
//  NewWorkout.swift
//  workoutPower
//
//  Created by Aleksandr  on 19.12.2022.
//

import UIKit


class NewWorkoutViewController: UIViewController {
    
    private let newWorkoutLabel = UILabel(text: "NEW WORKOUT")
    private lazy var closeButton = CloseButton(type: .system)
    
    private let nameLabel = UILabel(text: "Name")
    private let nameTextField = BrownTextField()
    
   private let dateAndRepeatView = DateAndRepeatView()
   private let repsOrTimerView = RepsofTimer()

    private lazy var saveButton = GreenButton(text: "SAVE")

   // private var stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        addTaps()
        
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(newWorkoutLabel)
        view.addSubview(closeButton)
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)

        view.addSubview(dateAndRepeatView)
        view.addSubview(repsOrTimerView)
//        stackView = UIStackView(arrangedSubviews: [dateAndRepeatView, repsOrTimerView], spacing: 20)
//        view.addSubview(stackView)
        
        view.addSubview(saveButton)
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    @objc private func closeButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc private func saveButtonTapped() {
        print("save")
    }
    
    private func addTaps() {
        
        let tapScreen = UIGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapScreen)
        let swipeScreen = UISwipeGestureRecognizer(target: self, action: #selector(hideKeyboard))
        swipeScreen.cancelsTouchesInView = false
    }
        @objc private func hideKeyboard() {
            view.endEditing(true)
        }
    
}

//MARK: - Set Constraints
extension NewWorkoutViewController {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            newWorkoutLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            newWorkoutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: newWorkoutLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 33),
            closeButton.widthAnchor.constraint(equalToConstant: 33),
            
            nameLabel.topAnchor.constraint(equalTo: newWorkoutLabel.bottomAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 40),
           
            dateAndRepeatView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 25),
            dateAndRepeatView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateAndRepeatView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dateAndRepeatView.heightAnchor.constraint(equalToConstant: 115),
//
            
            repsOrTimerView.topAnchor.constraint(equalTo: dateAndRepeatView.bottomAnchor, constant: 10),
            repsOrTimerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            repsOrTimerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            repsOrTimerView.heightAnchor.constraint(equalToConstant: 340),

            saveButton.topAnchor.constraint(equalTo: repsOrTimerView.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            saveButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
