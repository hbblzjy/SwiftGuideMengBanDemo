//
//  ViewController.swift
//  SwiftGuideMengBanDemo
//
//  Created by JasonHao on 2017/7/24.
//  Copyright © 2017年 JasonHao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        self.title = "首页"
        
        let btn:UIButton = UIButton.init(frame: CGRect.init(x: 60, y: 100, width: 150, height: 100))
        btn.setTitle("进入新的页面", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
    //按钮事件
    func btnClick() {
        let oneVC:OneViewController = OneViewController()
        self.navigationController?.pushViewController(oneVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

