//
//  MessageCellTableViewCell.swift
//  ylcChageTableview
//
//  Created by  yanglc on 15/12/2.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class MessageCellTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        self.addSubview(timevv);
        self.addSubview(iconnn);
        self.addSubview(textvv)
        
        
        self.backgroundColor = UIColor.clearColor();
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
    
    
    class internal func getCell(tableview:UITableView)->MessageCellTableViewCell{
        
        var cell = tableview.dequeueReusableCellWithIdentifier(Common.ID as String) as? MessageCellTableViewCell;
        if(cell == nil){
            cell = MessageCellTableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: (Common.ID as String));
            
        }
        return cell!;
    }
    
    
    lazy var timevv:UILabel = {
        var t =  UILabel();
       
        t.textAlignment = .Center;
        return t;
    }()
    lazy var iconnn:UIImageView = {
        
        return UIImageView()
        
    }()
    lazy var textvv:UIButton = {
        
        var t = UIButton();
      
        t.titleLabel!.numberOfLines = 0;//自动换行
        t.contentEdgeInsets = UIEdgeInsetsMake(20, 20, 20, 20);
        t.setTitleColor(UIColor.greenColor(), forState: .Normal);
       
        return t;
        
    }()
    
    
    public func setData(itemdata:MessageFrameModel?){
        
        if(itemdata == nil){
            return;
        }
        
        var time = itemdata!.realData.time;
        var text = itemdata!.realData.text;
        var bshow = itemdata!.realData.bShowTime;
        
        
        timevv.frame = itemdata!._timeRect;
        iconnn.frame = itemdata!._iconRect;
        textvv.frame = itemdata!._textRect
        
        if(itemdata?.realData.type == MessageType.TypeMe){
            iconnn.image = UIImage(named: "Gatsby")
            
        }else{
            iconnn.image = UIImage(named: "Jobs")
        }
        
        
        timevv.text = itemdata!.realData.time as String;
       
        textvv.setTitle(itemdata!.realData.text as String, forState: .Normal)
        
        
        if(itemdata?.realData.type == MessageType.TypeMe){
         
            
            textvv.setBackgroundImage(UIImage.resizeWithImageName( "chat_send_nor"), forState: .Normal);
            
            
        }else{
            
            textvv.setBackgroundImage(UIImage.resizeWithImageName( "chat_recive_nor"), forState: .Normal);
            

            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
