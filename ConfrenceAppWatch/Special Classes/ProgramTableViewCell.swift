//
//  ProgramTableViewCell.swift
//  ConfrenceAppWatch
//
//  Created by Kuga Kugaraja on 2017-12-19.
//  Copyright © 2017 Kuga Kugaraja. All rights reserved.
//

import UIKit

class ProgramTableViewCell: UITableViewCell {
    
    //define required IBOutlets
    @IBOutlet var title: UILabel!
    @IBOutlet var speaker: UILabel!
    @IBOutlet var from: UILabel!
    @IBOutlet var to: UILabel!
    @IBOutlet var imgSpeaker: UIImageView!

    //save button
    @IBAction func saveUnSaveSelection (sender : UIButton) {
        
    }


    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
