//
//  ProgramObject.swift
//  ConfrenceAppWatch
//
//  Handles data connectivity to and from the watch
//

import UIKit

class ProgramObject: NSObject, NSCoding {
    
    //define items that will be transffered
    var title: String?
    var speaker: String?
    var from: String?
    var to: String?
    var details: String?
    
    //constructor to save data
    func initWithData ( title: String,
                        speaker: String,
                        from: String,
                        to: String,
                        details: String)
    {
        self.title = title;
        self.speaker = speaker;
        self.from = from;
        self.to = to
        self.details = details
    }
    
    //contructor for serializing and de-serializing object (NSCoding)
    required convenience init? (coder decoder: NSCoder)
    {
        <#code#>
    }
    
    //take object and send it to watch
    func encode(with coder: NSCoder)
    {
        coder.encode(self.title, forKey: "title")
        coder.encode(self.speaker, forKey: "speaker")
        coder.encode(self.from, forKey: "from")
        coder.encode(self.to, forKey: "to")
        coder.encode(self.details, forKey: "details")


    }

}
