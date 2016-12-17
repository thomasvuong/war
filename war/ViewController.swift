//
//  ViewController.swift
//  war
//
//  Created by Mr Nghe on 3/12/16.
//  Copyright © 2016 Mr Nghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardImage: UIImageView!
    @IBOutlet weak var rightCardImage: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    let cardname = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBAction func dealTapped(_ sender: Any) {
        let leftcardnumber = Int(arc4random_uniform(13))
        leftCardImage.image = UIImage(named: cardname[leftcardnumber])
        let rightcardnumber = Int(arc4random_uniform(13))
        rightCardImage.image = UIImage(named: cardname[rightcardnumber])
    
    if (leftcardnumber > rightcardnumber) {
        leftscore += 1
        leftScoreLabel.text = String(leftscore)
    }
    else if (leftcardnumber == rightcardnumber){
        //this is a tight
    }
    else {
        rightscore += 1
        rightScoreLabel.text = String(rightscore)
    }
    }
}

