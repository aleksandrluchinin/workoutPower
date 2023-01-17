//
//  AlertController.swift
//  workoutPower
//
//  Created by Aleksandr  on 17.01.2023.
//

import UIKit

extension UIViewController {
    
    func prezentSimleAlert(title: String, message: String?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alertController.addAction(okAction)
     present(alertController, animated: true)
     
    }
}
