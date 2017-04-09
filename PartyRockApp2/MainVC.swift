//
//  ViewController.swift
//  PartyRockApp2
//
//  Created by Turcu Ciprian on 09/04/2017.
//  Copyright © 2017 Turcu Ciprian. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var PartyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = PartyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else{
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PartyRocks.count
    }
}

