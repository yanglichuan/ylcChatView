//
//  Common.swift
//  ylcChageTableview
//
//  Created by  yanglc on 15/12/2.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class Common: NSObject {
    
    
//    internal let iconW:CGFloat  = 50;
//    internal let iconH:CGFloat  = 50;
//    
    
    class internal func getIconW()->CGFloat{
        return 50;
    }
    
    
    class internal func getIconH()->CGFloat{
        return 50;
    }
    
    class internal var ID:NSString{
        return "IDD";
    }
    
    
    
    
    
    
    class internal func getScreenW()->CGFloat{
        return UIScreen.mainScreen().bounds.width;

    }
    
    
    class internal func getScreenH()->CGFloat{
        return UIScreen.mainScreen().bounds.height;
    }
    
    
    
    
    
    

}
