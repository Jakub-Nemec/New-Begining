//
//  MemesVC.swift
//  Begining-Swift
//
//  Created by Jakub Němec on 24.03.2021.
//

import UIKit

class MemesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var memesTableView = UITableView()
    
    var dataArray = ["Hovado", "Magor", "Vítek", "Hovno", "Popokatetepl"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(memesTableView)
        setTableViewDelegates()
    }
    
    func setTableViewDelegates(){
        memesTableView.delegate = self
        memesTableView.dataSource = self
        //register cells
        memesTableView.pin(to: view)
        memesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MemeCellTBVC ?? MemeCellTBVC()
        
        cell.setupLbMemes()
        tableView.rowHeight = 100
        
        return cell
    }

}
