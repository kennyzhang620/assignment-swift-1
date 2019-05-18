//
//  sharedVariables.swift
//  codingChallenge2
//
//  Created by macbook-air on 2019-05-17.
//  Copyright © 2019 macbook-air. All rights reserved.
//

import Foundation
public class sharedVars {
    
    public struct imageInformation {
        public var name: String = "name";
        public var description: String = "description";
        public var dateString: String = "date";
        public var imageSource: String = "Group 2.1.png";
    }
    
    public var imageData = [imageInformation()]
    public static let shared = sharedVars();
}
