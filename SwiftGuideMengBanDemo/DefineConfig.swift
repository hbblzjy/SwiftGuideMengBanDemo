//
//  DefineConfig.swift
//  SwiftGuideMengBanDemo
//
//  Created by JasonHao on 2017/7/26.
//  Copyright © 2017年 JasonHao. All rights reserved.
//

import Foundation
import UIKit

let Screen_Width = UIScreen.main.bounds.size.width
let Screen_Height = UIScreen.main.bounds.size.height
let isOpenGuide:String = "OpenGuide"

//判断iPhone4
let IS_iPHONE4:Bool = (Screen_Height == 480) ? true : false
//判断iPhone5/5c/5s
let IS_iPHONE5:Bool = (Screen_Height == 568) ? true : false
//判断iPhone6/6s
let IS_iPHONE6:Bool = (Screen_Height == 667) ? true : false
//判断iPhone6p
let IS_iPHONE6P:Bool = (Screen_Height > 667) ? true : false
//判断iPad
let IPAD_DEV:Bool! = (UIDevice.current.userInterfaceIdiom == .pad) ? true : false



