//
//  AlertHelper.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Foundation
import UIKit

public class AlertHelper {
    public static let shared = AlertHelper()
    
    public func showAlert(title: String? = nil, message: String?, actions: [UIAlertAction]) {
        guard let message = message, !message.isEmpty else {
            debugPrint("Message not found")
            return
        }
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIDevice.current.isIPad ? .actionSheet : .alert)
        
        actions.forEach {
            alertController.addAction($0)
        }
        
        UIApplication.shared.topController?.present(alertController, animated: true)
    }
    
    public func showActionSheet(title: String? = nil, message: String?, actions: [UIAlertAction]) {
        guard let message = message, !message.isEmpty else {
            debugPrint("Message not found")
            return
        }
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        actions.forEach {
            alertController.addAction($0)
        }
        
        UIApplication.shared.topController?.present(alertController, animated: true)
    }
}
