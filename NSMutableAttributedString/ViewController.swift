//
//  ViewController.swift
//  NSMutableAttributedString
//
//  Created by 林佩柔 on 2021/3/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textStyle(label: textLabel)
    }
    
    func textStyle(label: UILabel){
        let attributedString = NSMutableAttributedString(string: label.text!)
        
        // 字型、字體大小
        attributedString.addAttribute(.font, value: UIFont(name: "Chalkduster", size: 30.0)!, range: NSMakeRange(9, 1))
        // 字體顏色
        attributedString.addAttribute(.foregroundColor, value: UIColor.red, range: NSMakeRange(19, 2))
        
        // 背景顏色
        attributedString.addAttribute(.backgroundColor, value: UIColor.red, range: NSMakeRange(24, 4))
        
        // 刪除線顏色、樣式: none, single, thick, double
        attributedString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.thick.rawValue, range: NSMakeRange(41, 3))
        attributedString.addAttribute(.strikethroughColor, value: UIColor.green, range: NSMakeRange(41, 3))
        attributedString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.thick.rawValue, range: NSMakeRange(45, 3))
        attributedString.addAttribute(.strikethroughColor, value: UIColor.green, range: NSMakeRange(45, 3))
        attributedString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.double.rawValue, range: NSMakeRange(49, 3))
        attributedString.addAttribute(.strikethroughColor, value: UIColor.green, range: NSMakeRange(49, 3))
        
        // 底線顏色、樣式: none, single, thick, double
        attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(64, 3))
        attributedString.addAttribute(.underlineColor, value: UIColor.lightGray, range: NSMakeRange(64, 3))
        attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.thick.rawValue, range: NSMakeRange(68, 3))
        attributedString.addAttribute(.underlineColor, value: UIColor.lightGray, range: NSMakeRange(68, 3))
        attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.double.rawValue, range: NSMakeRange(72, 3))
        attributedString.addAttribute(.underlineColor, value: UIColor.lightGray, range: NSMakeRange(72, 3))
        
        // 陰影
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.red // 陰影顏色
        shadow.shadowOffset = CGSize(width: 10, height: 10) // 陰影位移位置
        shadow.shadowBlurRadius = 5 // 陰影暈染模糊程度
        attributedString.addAttribute(.shadow, value: shadow, range: NSMakeRange(79, 2))
        
        // 外框 寬度顏色
        // 外
        attributedString.addAttribute(.strokeWidth, value: 3, range: NSMakeRange(91, 4)) // 試試 3,1,0,-1,-8
        attributedString.addAttribute(.strokeColor, value: UIColor.yellow , range: NSMakeRange(91, 5))
        // 內
        attributedString.addAttribute(.strokeWidth, value: -5, range: NSMakeRange(99, 4)) // 試試 3,1,0,-1,-8
        attributedString.addAttribute(.strokeColor, value: UIColor.yellow , range: NSMakeRange(99, 5))
        
        // 斜體
        // 往右斜 value大於0
        attributedString.addAttribute(.obliqueness, value: 0.4, range: NSMakeRange(112, 3))
        // 往左斜 value小於0
        attributedString.addAttribute(.obliqueness, value: -0.4, range: NSMakeRange(116, 3))
        
        // 文字間距
        attributedString.addAttribute(.kern, value: 5 , range: NSMakeRange(120, 4)) // value 試試 -5, 0, 5

        // .setAttributes([key: value], range)
        attributedString.setAttributes([.font: UIFont(name: "Chalkduster", size: 30.0)!, .foregroundColor: UIColor.red], range: NSMakeRange(136, 4))
        // .addAttributes([key: value], range)
        attributedString.addAttributes([.shadow: shadow, .strokeColor: UIColor.yellow, .strokeWidth: 3], range: NSMakeRange(161, 4))
        
        label.attributedText = attributedString
    }


}

