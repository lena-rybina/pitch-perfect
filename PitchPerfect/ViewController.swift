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
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordinButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        stopRecordinButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Recording Stopped. Tap to record"
        recordButton.isEnabled = true
        stopRecordinButton.isEnabled = false
        
    }
}
