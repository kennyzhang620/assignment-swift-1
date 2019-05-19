//
//  sharedVariables.swift
//  codingChallenge2
//
//  Created by macbook-air on 2019-05-17.
//  Copyright © 2019 macbook-air. All rights reserved.
//

import Foundation
public class sharedVars {
    // permits data to be shared from one class to another and accessed from one central location
    
    public struct imageInformation {
        public var name: String = "name";
        public var description: String = "description";
        public var dateString: String = "date";
        public var imageSource: String = "remindme.png";
    }
    
    public var selectedImageString = "";
    
    public var imageData = [imageInformation()]
    public static let shared = sharedVars();
}
