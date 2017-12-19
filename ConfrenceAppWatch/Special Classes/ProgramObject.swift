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
    
    //de-serializing object (NSCoding)
    required convenience init? (coder decoder: NSCoder)
    {
        guard
            let title = decoder.decodeObject (forKey: "title") as? String,
            let speaker = decoder.decodeObject (forKey: "speaker") as? String,
            let from = decoder.decodeObject (forKey: "from") as? String,
            let to = decoder.decodeObject (forKey: "to") as? String,
            let details = decoder.decodeObject(forKey: "details") as? String
       else
        {
                return nil
        }
        
        self.init()
        self.initWithData(title: title, speaker: speaker, from: from, to: to, details: details)
    }
    
    //for serializing
    func encode(with coder: NSCoder)
    {
        coder.encode(self.title, forKey: "title")
        coder.encode(self.speaker, forKey: "speaker")
        coder.encode(self.from, forKey: "from")
        coder.encode(self.to, forKey: "to")
        coder.encode(self.details, forKey: "details")


    }

}
