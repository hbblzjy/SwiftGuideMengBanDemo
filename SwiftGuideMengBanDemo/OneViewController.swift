//
//  OneViewController.swift
//  SwiftGuideMengBanDemo
//
//  Created by JasonHao on 2017/8/2.
//  Copyright © 2017年 JasonHao. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        
        let label:UILabel = UILabel.init(frame: CGRect.init(x: 60, y: 100, width: 60, height: 200))
        label.text = "这是一个需要指导的新界面，只有第一次打开才有步骤指导"
        label.numberOfLines = 0
        label.textColor = UIColor.red
        label.textAlignment = .center
        self.view.addSubview(label)
        
        if JHGuideView.isShowGuiderView() {
            self.view.addSubview(JHGuideView.jhGuideView(aFrame: CGRect.init(x: 0, y: 0, width: Screen_Width, height: Screen_Height), aImageName: "guide", aImageCount: 2))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
