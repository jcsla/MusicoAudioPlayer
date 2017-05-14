//
//  ViewController.swift
//  MusicoAudioPlayer
//
//  Created by jcsla@naver.com on 05/11/2017.
//  Copyright (c) 2017 jcsla@naver.com. All rights reserved.
//

import UIKit

import MusicoAudioPlayer
import SDWebImage

class ViewController: UIViewController, AudioPlayerDelegate {
    
    var player: AudioPlayer?
    var item: AudioItem?

    @IBOutlet weak var thumbnail: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = AudioPlayer()
        player?.delegate = self
        let url = "http://api.musico.kr:8080/mp3/a.mp3";
        item = AudioItem(mediumQualitySoundURL: URL(string: url))
        item?.title = "title"
        item?.artist = "artist"
        item?.artworkImageUrl = "https://i1.sndcdn.com/artworks-000221899583-k5171v-t500x500.jpg"
    }
    
    func foo(completionHandler: @escaping CompletionHandler){
        print("foo")
        completionHandler(false,"fail to foo")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickPlayBtn(_ sender: Any) {
        print("clickPlayBtn")
        player?.play(item: item!)
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, didChangeStateFrom from: AudioPlayerState,
                     to state: AudioPlayerState) {
        print("didChangeStateFrom")
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, willStartPlaying item: AudioItem) {
        print("willStartPlaying")
        self.setThumbnail(image: item.artworkImage!)
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, didUpdateProgressionTo time: TimeInterval, percentageRead: Float) {
        print("didUpdateProgressionTo")
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, didFindDuration duration: TimeInterval, for item: AudioItem) {
        print("didFindDuration")
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, didUpdateEmptyMetadataOn item: AudioItem, withData data: Metadata) {
        print("didUpdateEmptyMetadataOn")
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, didLoad range: TimeRange, for item: AudioItem) {
        print("didLoad")
    }
    
    func audioPlayer(_ audioPlayer: AudioPlayer, didGetStreamUrlFromId: AudioItem, id: Int, completionHandler: @escaping CompletionHandler) {
        print("didGetStreamUrlFromId on controller")
        foo(completionHandler: completionHandler)
    }
    
    func setThumbnail(image: UIImage) {
        DispatchQueue.main.async {
            self.thumbnail.image = image
        }
    }
}

