//
//  TrainView.swift
//  DrawUIBezierPathFitToUIViewDemo
//
//  Created by Mossuru777 on 2018/01/24.
//  Copyright © 2018年 Mossan. All rights reserved.
//

import UIKit
import DrawUIBezierPathFitToUIView

class TrainView: UIView {
    override func draw(_ rect: CGRect) {
        let fitPath = DrawUIBezierPathFitToUIView(self)

        let fillColor = UIColor(red: 0.533, green: 0.533, blue: 0.533, alpha: 1)
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150, y: 206))
        path.addCurve(to: CGPoint(x: 173, y: 206), controlPoint1: CGPoint(x: 150, y: 206), controlPoint2: CGPoint(x: 158, y: 206))
        path.addCurve(to: CGPoint(x: 193, y: 166), controlPoint1: CGPoint(x: 182, y: 206), controlPoint2: CGPoint(x: 193, y: 181))
        path.addCurve(to: CGPoint(x: 194, y: 28), controlPoint1: CGPoint(x: 193, y: 162), controlPoint2: CGPoint(x: 194, y: 47))
        path.addCurve(to: CGPoint(x: 164, y: 0), controlPoint1: CGPoint(x: 194, y: 9), controlPoint2: CGPoint(x: 177, y: 0))
        path.addLine(to: CGPoint(x: 37, y: 0))
        path.addCurve(to: CGPoint(x: 7, y: 28), controlPoint1: CGPoint(x: 23, y: 0), controlPoint2: CGPoint(x: 7, y: 9))
        path.addCurve(to: CGPoint(x: 7, y: 166), controlPoint1: CGPoint(x: 7, y: 47), controlPoint2: CGPoint(x: 7, y: 160))
        path.addCurve(to: CGPoint(x: 27, y: 206), controlPoint1: CGPoint(x: 7, y: 173), controlPoint2: CGPoint(x: 18, y: 205))
        path.addCurve(to: CGPoint(x: 50, y: 206), controlPoint1: CGPoint(x: 42, y: 206), controlPoint2: CGPoint(x: 50, y: 206))
        path.addLine(to: CGPoint(x: 0, y: 275))
        path.addLine(to: CGPoint(x: 29, y: 275))
        path.addLine(to: CGPoint(x: 62, y: 230))
        path.addLine(to: CGPoint(x: 139, y: 230))
        path.addLine(to: CGPoint(x: 171, y: 275))
        path.addLine(to: CGPoint(x: 201, y: 275))
        path.addLine(to: CGPoint(x: 150, y: 206))
        fitPath.addPath(path, fillColor: fillColor, strokeColor: nil)

        let fillColor1 = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 69, y: 13))
        path1.addLine(to: CGPoint(x: 131, y: 13))
        path1.addCurve(to: CGPoint(x: 139, y: 21), controlPoint1: CGPoint(x: 136, y: 13), controlPoint2: CGPoint(x: 139, y: 17))
        path1.addCurve(to: CGPoint(x: 131, y: 28), controlPoint1: CGPoint(x: 139, y: 25), controlPoint2: CGPoint(x: 136, y: 28))
        path1.addLine(to: CGPoint(x: 69, y: 28))
        path1.addCurve(to: CGPoint(x: 62, y: 21), controlPoint1: CGPoint(x: 65, y: 28), controlPoint2: CGPoint(x: 62, y: 25))
        path1.addCurve(to: CGPoint(x: 69, y: 13), controlPoint1: CGPoint(x: 62, y: 17), controlPoint2: CGPoint(x: 65, y: 13))
        fitPath.addPath(path1, fillColor: fillColor1, strokeColor: nil)

        let fillColor2 = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 28, y: 107))
        path2.addLine(to: CGPoint(x: 28, y: 56))
        path2.addCurve(to: CGPoint(x: 38, y: 46), controlPoint1: CGPoint(x: 28, y: 51), controlPoint2: CGPoint(x: 32, y: 46))
        path2.addLine(to: CGPoint(x: 163, y: 46))
        path2.addCurve(to: CGPoint(x: 173, y: 56), controlPoint1: CGPoint(x: 168, y: 46), controlPoint2: CGPoint(x: 173, y: 51))
        path2.addLine(to: CGPoint(x: 173, y: 107))
        path2.addCurve(to: CGPoint(x: 163, y: 117), controlPoint1: CGPoint(x: 173, y: 113), controlPoint2: CGPoint(x: 168, y: 117))
        path2.addLine(to: CGPoint(x: 38, y: 117))
        path2.addCurve(to: CGPoint(x: 28, y: 107), controlPoint1: CGPoint(x: 32, y: 117), controlPoint2: CGPoint(x: 28, y: 113))
        fitPath.addPath(path2, fillColor: fillColor2, strokeColor: nil)

        let fillColor3 = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 50, y: 178))
        path3.addCurve(to: CGPoint(x: 37, y: 165), controlPoint1: CGPoint(x: 43, y: 178), controlPoint2: CGPoint(x: 37, y: 172))
        path3.addCurve(to: CGPoint(x: 50, y: 152), controlPoint1: CGPoint(x: 37, y: 158), controlPoint2: CGPoint(x: 43, y: 152))
        path3.addCurve(to: CGPoint(x: 63, y: 165), controlPoint1: CGPoint(x: 57, y: 152), controlPoint2: CGPoint(x: 63, y: 158))
        path3.addCurve(to: CGPoint(x: 50, y: 178), controlPoint1: CGPoint(x: 63, y: 172), controlPoint2: CGPoint(x: 57, y: 178))
        fitPath.addPath(path3, fillColor: fillColor3, strokeColor: nil)

        let fillColor4 = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 138, y: 165))
        path4.addCurve(to: CGPoint(x: 151, y: 152), controlPoint1: CGPoint(x: 138, y: 158), controlPoint2: CGPoint(x: 144, y: 152))
        path4.addCurve(to: CGPoint(x: 164, y: 165), controlPoint1: CGPoint(x: 158, y: 152), controlPoint2: CGPoint(x: 164, y: 158))
        path4.addCurve(to: CGPoint(x: 151, y: 178), controlPoint1: CGPoint(x: 164, y: 172), controlPoint2: CGPoint(x: 158, y: 178))
        path4.addCurve(to: CGPoint(x: 138, y: 165), controlPoint1: CGPoint(x: 144, y: 178), controlPoint2: CGPoint(x: 138, y: 172))
        fitPath.addPath(path4, fillColor: fillColor4, strokeColor: nil)
        fitPath.drawScaledPathFitToView()
    }
}
