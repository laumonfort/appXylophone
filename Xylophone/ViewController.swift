//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

//import UIKit
//import AVFoundation
//
//class ViewController: UIViewController {
//
//    var player: AVAudioPlayer? // specifying the type of our player
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    @IBAction func keyPressed(_ sender: UIButton) {
//    // everytime we touch within the boundary of the C button will trigger any code located in this block
//    // print("the red bottom is pressed")
//
//        playSound() // we call the function
//    }
//    // implement the code just above the last closing brace:
//
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return } // we do some modifications here. We have the extension .wav and the name C, D, E, F, G, A, B...
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//
//            guard let player = player else { return }
//
//            player.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//
//
//    }
//
//}

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
// this fuction get called when the linked button gets tapped
    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.titleLabel)
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


