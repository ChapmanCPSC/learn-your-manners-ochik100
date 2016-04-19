//
//  MannerDetailViewController.swift
//  LearnManners
//
//  Created by Kelly Ochikubo on 4/14/16.
//  Copyright © 2016 Kelly Ochikubo. All rights reserved.
//

import UIKit

class MannerDetailViewController: UIViewController {
    
    
    static var DETAIL_VIEW : String = "detail_view"

    @IBOutlet weak var mannerTitleLabel: UILabel!
    @IBOutlet weak var mannerImage: UIImageView!
    var manner : Manner!
    @IBOutlet weak var mannerDetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mannerTitleLabel.textAlignment = .Center
        self.mannerTitleLabel.text = manner.title
        self.mannerImage.image = UIImage(named: manner.image)
        self.mannerDetails.text = manner.info

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
