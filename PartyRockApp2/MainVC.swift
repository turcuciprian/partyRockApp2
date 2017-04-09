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
        let imgURL = "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2bF6QipA3iQ\" frameborder=\"0\" allowfullscreen></iframe>"
        let p1 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "love is a one way street, live")
        
//        PartyRocks.append(p1)
        
        
        
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

