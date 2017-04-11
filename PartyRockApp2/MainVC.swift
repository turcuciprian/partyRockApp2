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
        var imgURL =  "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        var urlTest = self.return_embeded(ytCode: "2bF6QipA3iQ")
        let p1 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "Come into my head")
        
        
        imgURL = "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        urlTest = self.return_embeded(ytCode: "2bF6QipA3iQ")
        let p2 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "Settle down")
        
        
        imgURL = "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        urlTest = self.return_embeded(ytCode: "2bF6QipA3iQ")
        let p3 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "Cameo Lover")
        
        
        imgURL = "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        urlTest = self.return_embeded(ytCode: "2bF6QipA3iQ")
        let p4 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "Call me")
        
        
        imgURL = "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        urlTest = self.return_embeded(ytCode: "2bF6QipA3iQ")
        let p5 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "The build up")
        
        imgURL = "https://i.ytimg.com/vi/2SH0pVVBmN0/maxresdefault.jpg"
        urlTest = self.return_embeded(ytCode: "2bF6QipA3iQ")
        let p6 = PartyRock(imageURL: imgURL, videoURL: urlTest, videoTitle: "Plain Gold Ring")
        
        PartyRocks.append(p1)
        PartyRocks.append(p2)
        PartyRocks.append(p3)
        PartyRocks.append(p4)
        PartyRocks.append(p5)
        PartyRocks.append(p6)
        
        
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PCid", for: indexPath) as? PartyCell {
            
            let partyRock = PartyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else{
            return UITableViewCell()
        }
    }
    func return_embeded(ytCode: String) -> String{
        return "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/\(ytCode)\" frameborder=\"0\" allowfullscreen></iframe>"
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PartyRocks.count
    }
}

