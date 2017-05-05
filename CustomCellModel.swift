//
//  CustomCellModel.swift
//  SQLTest
//
//  Created by 王涛 on 2017/5/4.
//  Copyright © 2017年 王涛. All rights reserved.
//

import UIKit

class CustomCellModel: NSObject {
    
    var textString = NSString()
    var image = UIImage()
    
    init(paras:NSDictionary) {
        textString = paras.object(forKey: "text") as! NSString
        image = UIImage.init(named: (paras.object(forKey: "image") as! NSString) as String)!
    }
}

class DataSource: NSObject {
    
    func arrayData(parameters:NSArray) -> NSMutableArray {
        let arr = NSMutableArray()
        for dic in parameters {
            let model = CustomCellModel.init(paras: dic as! NSDictionary)
            arr .add(model)
        }
        return arr
    }
    
    //这里的数据可以是网络请求的数据
    func data() -> NSArray {
        let arr = NSArray.init(array: [["text":"1_oewhirgh","image":"cee.jpg"],["text":"2_oewhirgh","image":"cee.jpg"],["text":"3_oewhirgh","image":"cee.jpg"],["text":"4_oewhirgh","image":"cee.jpg"],["text":"5_oewhirgh","image":"cee.jpg"]])
        return arr
    }
}
