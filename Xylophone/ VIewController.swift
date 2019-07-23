//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    // var xySound = NSURL(fileURLWithPath: Bundle.mainBundle.path(forResource: 'note1', ofType: "wav"))
    // var player : AVAudioPlayer?
    var audioPlayer :AVAudioPlayer!
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        playSound(soundFilename: "note" + String(sender.tag))
    }
    func playSound(soundFilename:String) {
        let soundURL = Bundle.main.url(forResource: soundFilename, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}

