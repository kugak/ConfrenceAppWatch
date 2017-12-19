//
//  ProgramViewController.swift
//  ConfrenceAppWatch
//
//  Created by Kuga Kugaraja on 2017-12-19.
//  Copyright © 2017 Kuga Kugaraja. All rights reserved.
//

import UIKit

class ProgramViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var programs : [ProgramObject] = []
    
    func initFakeDetails()
    {
        let progObj = ProgramObject()
            progObj.initWithData(
            title: "Far and Away",
            speaker: "Jim Kirk",
            from: "Fri Oct 21, 3:15",
            to: "4:00",
            details: "Jim will Speak about something.")
        
        let progObj2 = ProgramObject()
            progObj2.initWithData(
            title: "Slow and Steady",
            speaker: "Mr Spock",
            from: "Fri Oct 31, 8:15",
            to: "9:00",
            details: "Mr Spock will Speak about something.")
        
        let progObj3 = ProgramObject()
            progObj3.initWithData(
            title: "Old and Boring",
            speaker: "Mr Scott",
            from: "Fri Nov 21, 3:15",
            to: "4:00",
            details: "Speaker will Speak about something.")
        
        let progObj4 = ProgramObject()
        progObj4.initWithData(
            title: "Another Talk",
            speaker: "Mr Jium",
            from: "Fri Dec 21, 3:15",
            to: "4:00",
            details: "Speaker will Speak about something.")
        
        //insert to array
        programs.insert(progObj, at: 0)
        programs.insert(progObj, at: 1)
        programs.insert(progObj, at: 2)
        programs.insert(progObj, at: 3)

        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initFakeDetails()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return programs.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell : ProgramTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ProgramCell")
        as? ProgramTableViewCell ?? ProgramTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ProgramCell")
        
        
        var row = indexPath.row
        var rowObj = programs[row]
        
        //populate cell
        tableCell.title.text = rowObj.title as String?
        tableCell.speaker.text = rowObj.speaker as String?
        tableCell.from.text = rowObj.from as String?
        tableCell.to    .text = rowObj.to as String?
        
        
        
        return tableCell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
