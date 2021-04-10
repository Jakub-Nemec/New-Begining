//
//  MusicVC.swift
//  Begining-Swift
//
//  Created by Jakub Němec on 24.03.2021.
//

import UIKit

class MusicVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var musicTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(musicTableView)
        setTableViewDelegates()
            
    }
    
    func setTableViewDelegates(){
        musicTableView.delegate = self
        musicTableView.dataSource = self
        musicTableView.backgroundColor = .darkGray
        //register cells
        musicTableView.rowHeight = 100
        musicTableView.pin(to: view)
        musicTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}
