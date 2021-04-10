//
//  ViewController.swift
//  Begining-Swift
//
//  Created by Jakub Němec on 13.01.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        SetupButton()
        setupBtn()
    }
    
    var randomTextBtn = UIButton()
    //var textArray: [String] = ["Honza", "Magor", "Ukulele", "Dragon", "City", "Popokatetepl", "peepoHappy", "FeelsGoodMan"]
    var buttonReset = UIButton()
    
    var text = ["PeepoHappy", "FeelsBadMan", "FeelsGoodMan", "Pepega", "Oni", "Sakaribo", "Kung-Fu-Panda"]
    
    var nextView = UIButton()
    
    func SetupButton(){
        view.addSubview(randomTextBtn)
        randomTextBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-250)
            make.width.equalTo(250)
        }
        randomTextBtn.setTitle("BUTTON-RND-TEXT", for: .normal)
        randomTextBtn.titleEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        randomTextBtn.backgroundColor = UIColor(named: "buttonBackground")
        randomTextBtn.layer.cornerRadius = 8
        randomTextBtn.layer.shadowColor = UIColor(named: "buttonShadow")?.cgColor
        randomTextBtn.layer.shadowOpacity = 0.8
        randomTextBtn.layer.shadowOffset = CGSize(width: 1, height: 1)
        randomTextBtn.layer.borderWidth = 2
        randomTextBtn.layer.borderColor = UIColor(named: "buttonBorder")?.cgColor
        randomTextBtn.addTarget(self, action: #selector(BtnPressed(_:)), for: .touchUpInside)
    }

    @objc func BtnPressed(_ sender: UIButton){
        //when you pressed button text was print
        //print(text)
        let lobotom = UILabel()
        lobotom.text = text.randomElement()!
        lobotom.textColor = .white
        lobotom.backgroundColor = .red
        lobotom.textAlignment = .center
        lobotom.font = UIFont(name: "ArialRoundedMTBold", size: 40)
        view.addSubview(lobotom)
        lobotom.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
    }
    
    func setupBtn(){
        view.addSubview(nextView)
        nextView.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-100)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        nextView.setTitle("BUTTON-next-view", for: .normal)
        nextView.titleEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        nextView.backgroundColor = UIColor(named: "buttonBackground")
        nextView.layer.cornerRadius = 8
        nextView.layer.shadowColor = UIColor(named: "buttonShadow")?.cgColor
        nextView.layer.shadowOpacity = 0.95
        nextView.layer.shadowOffset = CGSize(width: 1, height: 1)
        nextView.layer.borderWidth = 2.5
        nextView.layer.borderColor = UIColor(named: "buttonBorder")?.cgColor
        nextView.addTarget(self, action: #selector(NextView(_:)), for: .touchUpInside)
    }
    
    @objc func NextView(_ sedner: Any){
        let nextVC = OhView()
        self.navigationController?.pushViewController(nextVC, animated: true)//with navigation controller
        //self.present(nextVC, animated: true, completion: nil) This presenting only view controller without navigation controller
    }
}

