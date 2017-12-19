//
//  ProgramViewController.swift
//  ConfrenceAppWatch
//
//  Created by Kuga Kugaraja on 2017-12-19.
//  Copyright © 2017 Kuga Kugaraja. All rights reserved.
//

import UIKit

class ProgramViewController: UIViewController {
    
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
