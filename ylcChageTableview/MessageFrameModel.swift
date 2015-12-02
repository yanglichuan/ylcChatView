//
//  MessageFrameModel.swift
//  ylcChageTableview
//
//  Created by  yanglc on 15/12/2.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class MessageFrameModel: NSObject {
    
    internal init(model:MessageModel) {
        super.init();
        
        self.realData = model;
        
        salcalateRect();
    }
    
    internal func setRealModel(model:MessageModel){
        
        self.realData = model;
        
        salcalateRect();
        
    }
    
    internal var _timeRect:CGRect!;
    
    let pading:CGFloat = 10;
    
    
    var _iconRect:CGRect!
    
    var _textRect:CGRect!
    
    
    var _cellRect:CGFloat!
    

    

    private func salcalateRect(){

        var time = realData.time;
        var tx:CGFloat = 0;
        var ty:CGFloat = 0;
        var tw:CGFloat = Common.getScreenW();
        var th:CGFloat = 44;
        
        
        //这是时间的
        _timeRect = CGRectMake(tx, ty, tw, th);
        
        
        
        
        //这是关于头像的
        
        if(realData.type == MessageType.TypeMe){
            tx = Common.getScreenW() - Common.getIconW() - pading;
            ty = CGRectGetMaxY(_timeRect);
            _iconRect = CGRectMake(tx,ty,Common.getIconW(),Common.getIconH());
        }else{
            tx = pading;
            ty = CGRectGetMaxY(_timeRect);

            _iconRect = CGRectMake(tx, ty, Common.getIconW(), Common.getIconH());
        }
        
        
        //这是关于正文的
        
        var ttt = realData.text;
        var maxsize = CGSize(width: 150, height: CGFloat.max);
        var realSize = ttt.boundingRectWithSize(maxsize, options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(16)]           , context: nil)
        
        
        
        var buttonSize = CGSizeMake(realSize.width + 40, realSize.height + 40);
        

        if(realData.type  == MessageType.TypeMe){
            
            tx = Common.getScreenW() - buttonSize.width - Common.getIconW() - pading
            ty = _iconRect.origin.y;
            
            _textRect = CGRectMake(tx,ty,buttonSize.width,buttonSize.height)
        }else{
            tx = Common.getIconW() + pading
            ty = _iconRect.origin.y + pading;
            _textRect = CGRectMake(tx,ty,buttonSize.width,buttonSize.height)
            
        }
    
        
        var iconMaxY = CGRectGetMaxY(_iconRect);
        var textMaxY = CGRectGetMaxY(_textRect);
        
         _cellRect = max(iconMaxY, textMaxY);
        
}
        
    
    public var realData:MessageModel!;
    
    
    
    
    
    
    
    
    
    

}
