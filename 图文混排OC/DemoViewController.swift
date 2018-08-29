//
//  DemoViewController.swift
//  图文混排OC
//
//  Created by 张亚峰 on 2018/8/29.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1> 图片附件
        let attachment = NSTextAttachment()
        attachment.image = #imageLiteral(resourceName: "d_aini")
        
        let height = label.font.lineHeight
        
        attachment.bounds = CGRect(x: 0, y: -4, width: height, height: height)
        // 1>属性文本
        let imageStr = NSAttributedString(attachment: attachment)
        // 2>可变的图文字符串
        let attrStrM = NSMutableAttributedString(string: "我")
        attrStrM.append(imageStr)
        attrStrM.append(NSAttributedString(string: "峰峰"))
        //设置label
        label.attributedText = attrStrM
    }

    
}
