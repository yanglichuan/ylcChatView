//
//  ViewController.swift
//  ylcChageTableview
//
//  Created by  yanglc on 15/12/2.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate{
    
    
    
    @IBOutlet weak var field: UITextField!

    @IBOutlet weak var tableview: UITableView!
    
    var messages:NSMutableArray!
    
    
    func getMessages()->NSMutableArray{
        if(messages == nil){
            messages = NSMutableArray();
          
            
            for a in 1...10{
            
                
                var m = MessageModel.createFromDic();
                
                
                var wrapT = MessageFrameModel(model: m);
                
                messages.addObject(wrapT);
            }

        }
        
        
        
        
        return messages;
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        //获得数据
        getMessages();
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.allowsSelection  = false;
        
        tableview.backgroundColor = UIColor.grayColor()
        tableview.separatorStyle = .None;
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboard:", name: UIKeyboardWillChangeFrameNotification, object: nil);
        
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 0));
        field.leftViewMode = .Always;
        
        
        
        
        
    }
    
    func keyboard(cc:NSNotification){
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        field.resignFirstResponder()
        
        return true;
    }
        
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    
    
    
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        
        
        var x = messages[indexPath.row] as! MessageFrameModel;
        
        return x._cellRect;
        
        
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
      var cell =   MessageCellTableViewCell.getCell(tableView);
      cell.setData(messages[indexPath.row] as! MessageFrameModel)
        
        return cell;
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(messages != nil){
            return messages.count;
        }
        return 0;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

