//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Ielena Rybina on 4/23/20.
//  Copyright © 2020 Ielena Rybina. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var lowPitchButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int {
        case slow
        case fast
        case highpitch
        case lowpitch
        case echo
        case reverb
    }
    
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
            case .slow:
                playSound(rate: 0.5)
            case .fast:
                playSound(rate: 1.5)
            case .highpitch:
                playSound(pitch: 1000)
            case .lowpitch:
                playSound(pitch: -1000)
            case .echo:
                playSound(echo: true)
            case .reverb:
                playSound(reverb: true)
            }

            configureUI(.playing)
        }
        
    @IBAction func stopButton(_ sender: AnyObject) {
           stopAudio()
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear (animated)
        configureUI(.notPlaying)
    }
}
