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
    let titleLabel = UILabel()
    
    var state: ButttonStateType {
        didSet {
            stateChanged()
        }
    }
    
    enum ButttonStateType {
        case stop
        case recording
        case notStarted
        
        func getImage()-> UIImage {
            switch self {
            case .recording: return UIImage(named: "Stop")!
            case .stop,
                 .notStarted: return UIImage(named: "RecordButton")!
            }
        }
        
        func getTitle()-> String {
            switch self {
            case .stop: return "Recording stopped"
            case .recording: return "Recording in progress"
            case .notStarted: return "Please tap to record"
            }
        }
    }
    
    init(initial state: ButttonStateType) {
        self.state = state
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
        state = .notStarted
    }
    
    func layout() {
        view.backgroundColor = .magenta
        
        [button,
         titleLabel].forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(subview)
        }
        
        button.addTarget(self,
                         action: #selector(onTap(_:)),
                         for: .touchUpInside)
        
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 155),
            button.heightAnchor.constraint(equalToConstant: 155)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: button.bottomAnchor,
                                            constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    private func stateChanged() {
        titleLabel.text = state.getTitle()
        button.setImage(state.getImage(),
                        for: .normal)
    }
    
    @objc
    func onTap(_ action: Any) {
        switch state {
        case .recording: state = .stop
        case .stop,
             .notStarted: state = .recording
        }
    }
}
