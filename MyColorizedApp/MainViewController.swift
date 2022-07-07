//
//  ColorViewController.swift
//  MyColorizedApp
//
//  Created by Vadim Shinkarenko on 07.07.2022.
//

import Foundation
import UIKit


class MainViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ColorViewController
        colorVC.delegate = self
        
    }
}

extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
