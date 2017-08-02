//
//  JHGuideView.swift
//  SwiftGuideMengBanDemo
//
//  Created by JasonHao on 2017/7/26.
//  Copyright © 2017年 JasonHao. All rights reserved.
//

import UIKit

class JHGuideView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var imageName:String = String()//图片名称
    var imageCount:Int = Int()//图片数量
    
    //创建一个类方法，初始化
    //注意：OC方法中instancetype类型，在Swift中变成了这样：（-> 类名称!）
    //如果在方法中要使用自定义的init方法，需要在init方法前进行required修饰，然后self.init()调用 或者不加required修饰，直接 类名称.init（）调用，建议使用第二种方法调用，因为如果使用的是系统的init方法，就无法添加required进行修饰了，需要重写方法，这样就比较麻烦了
    class func jhGuideView(aFrame:CGRect,aImageName:String,aImageCount:Int) -> JHGuideView!{
        return JHGuideView.init(aFrame:aFrame,aImageName:aImageName,aImageCount:aImageCount)
    }
    //而创建的init方法，进行初始化的时候，需要用super.init(frame: 必须有frame值)
    init(aFrame:CGRect,aImageName:String,aImageCount:Int) {
        super.init(frame: aFrame)
        self.imageName = aImageName
        self.imageCount = aImageCount
        self.backgroundColor = UIColor.clear
        self.createUI()
    }
    //MARK:------ 创建UI
    func createUI() {
        if imageCount >= 0 {
            for i in 0 ..< imageCount {
                let realImageName:NSString = NSString.init(format: "%@_%d", imageName,i+1)
                let image:UIImage = UIImage.imageDeviceName(imageName: realImageName)
                let imageView:UIImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: Screen_Width, height: Screen_Height))
                imageView.image = image;
                imageView.isUserInteractionEnabled = true;
                imageView.tag = 1000 + i
                //添加手势
                let tapG = UITapGestureRecognizer.init(target: self, action: #selector(touchImageView(tap:)))
                imageView.addGestureRecognizer(tapG)
                
                self.addSubview(imageView)
            }
        }
    }
    //MARK:------ 手势方法
    func touchImageView(tap:UITapGestureRecognizer) {
        let tapImageView:UIImageView = tap.view as! UIImageView
        //依次移除
        tapImageView.removeFromSuperview()
        if tapImageView.tag - 1000 == 0 {
            //最后一张
            self.hideView()
        }
        
    }
    //MARK:------ 消失
    func hideView() {
        self.removeFromSuperview()
    }
    //判断是否显示过指导图
    class func isShowGuiderView() -> Bool{
        if UserDefaults.standard.object(forKey: isOpenGuide) == nil {
            UserDefaults.standard.set(100, forKey: isOpenGuide)
            UserDefaults.standard.synchronize()
            return true
        }else{
            return false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
