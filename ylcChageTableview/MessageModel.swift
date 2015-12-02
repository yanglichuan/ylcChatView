//
//  MessageModel.swift
//  ylcChageTableview
//
//  Created by  yanglc on 15/12/2.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class MessageModel: NSObject {
    
    
    internal var text:NSString!;
    
    internal var time:NSString!;
    
    internal var type:MessageType! = MessageType.TypeMe;
    
    
    internal var bShowTime:Bool = true;
    
    
    
    class internal func createFromDic()->MessageModel{
        
        var model = MessageModel();
        
        model.text = "快急死了都放假了撒的飞拉萨的减快急死了都放假了撒的飞拉萨的减";
        model.time = "2222222"
        model.type = MessageType.TypeOther;
        
        
        
        return model;
    }
    
    
    
    
}
