//
//  CustomView.swift
//  SQLTest
//
//  Created by 王涛 on 2017/5/4.
//  Copyright © 2017年 王涛. All rights reserved.
//

import UIKit

class CustomView: UIView {

    let lable = UILabel()
    var imageView = UIImageView()
    
    override init(frame: CGRect) {
        self.imageView.frame = CGRect.init(x: 0, y: 0, width:80, height: 80);
        imageView.backgroundColor = UIColor.red
        self.lable.frame = CGRect.init(x: 0, y: 90, width: 80, height: 30);
        lable.backgroundColor = UIColor.blue
        super.init(frame: frame)
        self.addSubview(self.imageView)
        self.addSubview(self.lable)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
