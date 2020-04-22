//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Ielena Rybina on 4/21/20.
//  Copyright © 2020 Ielena Rybina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
    }
    @IBAction func recordAudio(_ sender: Any) {
   print("The record button was pressed")
        recordingLabel.text = "Recording in Progress"
    }
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop recording button was pressed")
        recordingLabel.text = "Recording Stopped"
    }
}
