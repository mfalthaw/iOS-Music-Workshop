//
//  ViewController.swift
//  MusicPlayer-iOS-Workshop
//
//  Created by Admin on 2016-09-09.
//  Copyright © 2016 LHL. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, MediaPlayerProtocol {
    
    @IBOutlet var mediaPlayer: MediaPlayer!
    @IBOutlet var imageViewVar: UIImageView!
    @IBOutlet var progressViewVar: UIProgressView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mediaPlayer.setup()
        
    }
    
    func displaySong(song: Song) {
        imageViewVar.image = song.image
    }
    
    func displayCompletionPercentage(percentComplete: Float) {
        progressViewVar.progress = percentComplete
    }
}

