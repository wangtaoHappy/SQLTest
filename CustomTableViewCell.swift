//
//  CustomTableViewCell.swift
//  SQLTest
//
//  Created by 王涛 on 2017/5/4.
//  Copyright © 2017年 王涛. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    var _model : CustomCellModel!
    
    var c_imageView: UIImageView?
    var c_lable: UILabel?
    
    var model: CustomCellModel {
        get {
            return _model
        }
        set {
           _model = newValue
            c_imageView?.image = _model.image
            c_lable?.text = _model.textString as String
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        c_imageView = UIImageView.init(frame: CGRect.init(x: 10, y: 5, width: 80, height: 80))
//        c_imageView?.backgroundColor = UIColor.red
//        self.contentView.addSubview(c_imageView!)
//        c_lable = UILabel.init(frame: CGRect.init(x:(c_imageView?.frame.maxX)!, y: 5, width: 200, height: 80))
//        c_lable?.backgroundColor = UIColor.lightText
//        self.contentView.addSubview(c_lable!)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        c_imageView = UIImageView.init(frame: CGRect.init(x: 10, y: 5, width: 80, height: 80))
        c_imageView?.backgroundColor = UIColor.red
        self.contentView.addSubview(c_imageView!)
        c_lable = UILabel.init(frame: CGRect.init(x:(c_imageView?.frame.maxX)!, y: 5, width: 250, height: 80))
        c_lable?.numberOfLines = 0
        c_lable?.backgroundColor = UIColor.lightText
        self.contentView.addSubview(c_lable!)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
