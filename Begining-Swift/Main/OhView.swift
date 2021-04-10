//
//  OhView.swift
//  Begining-Swift
//
//  Created by Jakub Němec on 23.03.2021.
//

import UIKit
import SnapKit

class OhView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        
        setup()
    }
    
    var music = UILabel()
    var memes = UILabel()
    var streams = UILabel()
    
    func setup(){
        setupMusic()
        setupMemes()
        setupStreams()
    }
    
    func setupMusic(){
        view.addSubview(music)
        music.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.top.equalToSuperview().offset(150)
            make.trailing.equalTo(-69)
            make.leading.equalTo(69)
        }
        music.backgroundColor = .cyan
        music.text = "Music"
        music.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        music.shadowColor = .black
        music.shadowOffset = .zero
        music.layer.shadowOpacity = 10
        music.layer.shadowOpacity = 1
        music.textAlignment = .center
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClMusic(_:)))
        music.addGestureRecognizer(guestureRecognizer)
        
        music.isUserInteractionEnabled = true
    }
    
    func setupMemes(){
        view.addSubview(memes)
        memes.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.bottom.equalTo(music).offset(150)
            make.trailing.equalTo(-69)
            make.leading.equalTo(69)
        }
        memes.backgroundColor = .orange
        memes.textColor = .white
        memes.text = "Memes"
        memes.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        memes.shadowColor = .black
        memes.shadowOffset = .zero
        memes.layer.shadowOpacity = 10
        memes.layer.shadowOpacity = 1
        memes.textAlignment = .center
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClMemes(_:)))
        memes.addGestureRecognizer(guestureRecognizer)
        
        memes.isUserInteractionEnabled = true
    }
    
    func setupStreams(){
        view.addSubview(streams)
        streams.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.bottom.equalTo(memes).offset(150)
            make.trailing.equalTo(-69)
            make.leading.equalTo(69)
        }
        streams.backgroundColor = .black
        streams.textColor = .white
        streams.text = "Streams"
        streams.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        streams.shadowColor = .black
        streams.shadowOffset = .zero
        streams.layer.shadowOpacity = 10
        streams.layer.shadowOpacity = 1
        streams.textAlignment = .center
        
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClStreams(_:)))
        streams.addGestureRecognizer(guestureRecognizer)
        
        streams.isUserInteractionEnabled = true
    }
    
    @objc func labelClMusic(_ sender: Any) {
            let nextVC = MusicVC()
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func labelClMemes(_ sender: Any) {
        let nextVC = MemesVC()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func labelClStreams(_ sender: Any) {
        let nextVC = StreamsVC()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
