//
//  UIImage+Extension.swift
//  SwiftGuideMengBanDemo
//
//  Created by JasonHao on 2017/7/27.
//  Copyright © 2017年 JasonHao. All rights reserved.

//创建Swift文件，然后创建类似于OC中的类别（category），在Swift中是Extension
import Foundation
import UIKit

//UIImage的扩展：extension
extension UIImage {
    class func imageDeviceName(imageName:NSString) -> UIImage{
        
        var realImageName:NSString = NSString()
        
        if IS_iPHONE4 {
            realImageName = NSString.init(format: "%@_iphone4", imageName)
        }
        if IS_iPHONE5 {
            realImageName = NSString.init(format: "%@_iphone5", imageName)
        }
        if IS_iPHONE6 {
            realImageName = NSString.init(format: "%@_iphone6", imageName)
        }
        if IS_iPHONE6P {
            realImageName = NSString.init(format: "%@_iphone6p", imageName)
        }
        
        return UIImage.init(named: realImageName as String)!
    }
}
