//
//  ViewController.swift
//  LearnManners
//
//  Created by Kelly Ochikubo on 4/12/16.
//  Copyright © 2016 Kelly Ochikubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var manners : [Manner] = [
        Manner(title: "Eye Contact", image: "eye_contact", info: "Always make eye contact with the person you are speaking to."),
        Manner(title: "Giving Compliments", image: "compliments", info: "Giving compliments to someone is a nice way of showing you like them. \nYou can make someone's day better by giving them a compliment!"),
        Manner(title: "Sneezing", image: "sneezing", info: "Cover your mouth when you sneeze, and wash your hands after."),
        Manner(title: "Using the Restroom", image: "toilet", info: "Wash your hands after you are done using the restroom."),
        Manner(title: "Saying \"Excuse Me\"", image: "excuse_me", info: "When you are trying to get someone's attention, it is polite to say \"Excuse me\"."),
        Manner(title: "Eating", image: "eating", info: "Chew with your mouth closed, and use your napkin when you need to. \nWait until you're done chewing and swallowing before you speak to someone else. \nAvoid slouching and placing your elbows on the table while eating."),
        Manner(title: "Drinking", image: "drinking", info: "Before taking a sip of your drink, be sure to finish chewing and swallowing your food."),
        Manner(title: "Asking Nicely", image: "ask_nicely", info: "Say \"please\" when you are asking for something and \"thank you\" when you receive something."),
        
        
    ]

    @IBOutlet weak var mannerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mannerTableView.delegate = self
        self.mannerTableView.dataSource = self
        
        self.mannerTableView.tableFooterView = UIView()
        self.automaticallyAdjustsScrollViewInsets = false
        
        let mannerCellNib = UINib(nibName: MannerTableViewCell.MANNER_DETAIL_NIB_NAME, bundle: nil)
        self.mannerTableView.registerNib(mannerCellNib, forCellReuseIdentifier: MannerTableViewCell.MANNER_CELL_ID)
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let manner = self.manners[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier(MannerTableViewCell.MANNER_CELL_ID) as! MannerTableViewCell
        cell.initWithManner(manner)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let navVC = storyboard?.instantiateViewControllerWithIdentifier(MannerDetailViewController.DETAIL_VIEW) as! UINavigationController
        
        let detailVC = navVC.viewControllers[0] as! MannerDetailViewController
        detailVC.manner = self.manners[indexPath.row]
        
        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as! MannerTableViewCell
        currentCell.checkMarkImage.image = UIImage(named: "check")
        
        
        self.presentViewController(navVC, animated: true, completion: nil)
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manners.count
    }
    
    @IBAction func homePressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

