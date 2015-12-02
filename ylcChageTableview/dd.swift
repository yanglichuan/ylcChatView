//
//  dd.swift
//  ylcChageTableview
//
//  Created by  yanglc on 15/12/2.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

extension UIImage {
    
    
    
    class public func resizeWithImageName(name:String)->UIImage{
        
        var normal = UIImage(named: name);
        var w = normal!.size.width * 0.5;
        var h = normal!.size.height * 0.5;
      
        
        
        
        return normal!.resizableImageWithCapInsets(UIEdgeInsetsMake(h, w, h, w));
      
    }

    


}
