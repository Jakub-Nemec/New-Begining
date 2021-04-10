//
//  StreamsVC.swift
//  Begining-Swift
//
//  Created by Jakub Němec on 24.03.2021.
//

import UIKit

class StreamsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var streamsTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(streamsTableView)
        setTableViewDelegates()
    }
    
    func setTableViewDelegates(){
        streamsTableView.delegate = self
        streamsTableView.dataSource = self
        streamsTableView.rowHeight = 100
        //register cells
        streamsTableView.pin(to: view)
        streamsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
