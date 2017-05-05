//
//  ViewController.swift
//  SQLTest
//
//  Created by 王涛 on 2017/5/2.
//  Copyright © 2017年 王涛. All rights reserved.
//


import UIKit

let cellId = "CellId"

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView : UITableView?
    var dataSource = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    //添加视图测试，没啥用
//        let cusView = CustomView()
//        cusView.frame = CGRect.init(x: 100, y: 100, width: 120, height: 120)
//        cusView.backgroundColor = UIColor.gray
//        self.view.addSubview(cusView)

        let dataS = DataSource()
        dataSource = dataS.arrayData(parameters: dataS.data())
        //初始化tableView
        tableView = UITableView.init(frame: self.view.bounds, style: .plain)
        //设置代理
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.rowHeight = 90;
        tableView?.separatorStyle = .none
        tableView?.register(CustomTableViewCell.classForCoder(), forCellReuseIdentifier:cellId)
        self.view.addSubview(tableView!);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //返回model的个数即cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count
    }

    //给cell的model赋值
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomTableViewCell
        cell.model = dataSource[indexPath.row] as! CustomCellModel
        return cell
    }
    //滑动删除一行
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            dataSource.removeObject(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    //点击cell时走的代理方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("点击第\(indexPath.row)个cell咯,自己实现点击后的方法")
    }
}
