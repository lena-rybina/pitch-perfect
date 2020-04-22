//
//  ViewController2.swift
//  PitchPerfect
//
//  Created by Ielena Rybina on 4/21/20.
//  Copyright © 2020 Ielena Rybina. All rights reserved.
//

import Foundation
import UIKit

class LenochkaController: UIViewController {
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        layout()
    }
    
    func layout() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.backgroundColor = UIColor.orange
        
        button.setTitle("Press Me", for: .normal)
        button.setTitle("Pressed", for: .highlighted)
        
        button.setTitleColor(.magenta, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        
        button.addTarget(self,
                         action: #selector(onPress(_:)),
                         for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 300),
            button.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
    
    @objc
    func onPress(_ action: Any) {
        print("I'm Lenochka.")
    }
}
