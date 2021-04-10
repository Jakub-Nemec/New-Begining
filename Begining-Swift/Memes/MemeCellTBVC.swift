//
//  MemeCellTBVC.swift
//  Begining-Swift
//
//  Created by Jakub Němec on 25.03.2021.
//

import UIKit

class MemeCellTBVC: UITableViewCell {

    var labelMemes = UILabel()
    
    func setupLbMemes(){
        self.addSubview(labelMemes)
        labelMemes.font = UIFont.boldSystemFont(ofSize: 29.0)
        labelMemes.backgroundColor = .orange
        labelMemes.text = "Meme"
        labelMemes.textColor = .white
        labelMemes.textAlignment = .center
        labelMemes.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.bottom.equalToSuperview().offset(-60)
            make.top.equalToSuperview().offset(15)
            make.width.equalTo(100)
            make.center.equalToSuperview()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
