//
//  ViewController.swift
//  DrawUIBezierPathFitToUIViewDemo
//
//  Created by Mossuru777 on 2018/01/24.
//  Copyright © 2018年 Mossan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // set TrainView border
        for subView: UIView in self.view.subviews {
            subView.layer.borderWidth = 0.5
            subView.layer.borderColor = UIColor.gray.cgColor
        }
    }
}
