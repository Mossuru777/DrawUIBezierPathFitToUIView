//
//  DrawUIBezierPathFitToUIView.swift
//
//  Created by Mossuru777 on 2018/01/23.
//  Copyright (c) 2018 Mossan. All rights reserved.
//

import UIKit
import CoreGraphics

public class DrawUIBezierPathFitToUIView {
    /// UIBezierPaths scale when fit to UIView.
    /// The value must be greater than 0.0 and 1.0 or less.
    public var scale: CGFloat {
        get {
            return self.scale
        }

        set {
            if newValue <= 0.0 || newValue > 1.0 {
                fatalError("ValueError: scale must be greater than 0.0 and 1.0 or less.")
            }
            self.scale = newValue
        }
    }

    private typealias PathInfo = (path: UIBezierPath, fillColor: UIColor?, strokeColor: UIColor?)

    private let viewSize: CGSize
    private var paths: [PathInfo]

    /// Initialize with UIView to fit UIBezierPaths.
    ///
    /// - Parameters:
    ///   - view: UIView to fit UIBezierPaths.
    ///   - scale: draw scale (default value: 1.0)
    public init(_ view: UIView, scale: CGFloat = 1.0) {
        self.viewSize = view.frame.size
        self.paths = []
        self.scale = scale
    }

    /// Adding fit target UIBezierPath.
    /// It is necessary to set a value for fillColor or strokeColor.
    ///
    /// - Parameters:
    ///   - path: Fit target UIBezierPath object.
    ///   - fillColor: Path fill color
    ///   - strokeColor: Path stroke color
    public func addPath(_ path: UIBezierPath, fillColor: UIColor?, strokeColor: UIColor?) {
        if fillColor == nil && strokeColor == nil {
            fatalError("NoDrawPathError: arguments indicate no draw path.")
        }

        // check exist path in array
        for path_info: PathInfo in self.paths {
            if path_info.path == path {
                return
            }
        }

        // add path to array
        paths.append((path, fillColor, strokeColor))
    }

    /// Draw scaled UIBezierPaths for fit UIView.
    /// Scaled UIBezierPath keeps original aspect ratio.
    public func drawScaledPathFitToView() {
        var totalRect = CGRect(x: .greatestFiniteMagnitude, y: .greatestFiniteMagnitude, width: 0.0, height: 0.0)

        var fit_scale: CGFloat
        var centering_margin_x: CGFloat = 0.0
        var centering_margin_y: CGFloat = 0
        var move_x: CGFloat
        var move_y: CGFloat

        // calculate total bounds / origin
        for path_info: PathInfo in self.paths {
            let path = path_info.path

            // reset path scaling
            path.apply(.identity)

            // extends bounds / origin
            if path_info.strokeColor != nil {
                // width
                if path.bounds.origin.x + path.bounds.size.width + (path.lineWidth / 2) > totalRect.size.width {
                    totalRect.size.width = path.bounds.origin.x + path.bounds.size.width + (path.lineWidth / 2)
                }

                // x origin
                if path.bounds.origin.x - (path.lineWidth / 2) < totalRect.origin.x {
                    totalRect.origin.x = path.bounds.origin.x - (path.lineWidth / 2)
                }

                // height
                if path.bounds.origin.y + path.bounds.size.height + (path.lineWidth / 2) > totalRect.size.height {
                    totalRect.size.height = path.bounds.origin.y + path.bounds.size.height + (path.lineWidth / 2)
                }

                // y origin
                if path.bounds.origin.y - (path.lineWidth / 2) < totalRect.origin.y {
                    totalRect.origin.y = path.bounds.origin.y - (path.lineWidth / 2)
                }
            } else if path_info.fillColor != nil {
                // width
                if path.bounds.origin.x + path.bounds.size.width > totalRect.size.width {
                    totalRect.size.width = path.bounds.origin.x + path.bounds.size.width
                }

                // x origin
                if path.bounds.origin.x < totalRect.origin.x {
                    totalRect.origin.x = path.bounds.origin.x
                }

                // height
                if path.bounds.origin.y + path.bounds.size.height > totalRect.size.height {
                    totalRect.size.height = path.bounds.origin.y + path.bounds.size.height
                }

                // y origin
                if path.bounds.origin.y < totalRect.origin.y {
                    totalRect.origin.y = path.bounds.origin.y
                }
            }
        }

        // calculate scale / centering margin / move
        if self.scale > 1.0 || self.scale <= 0 {
            self.scale = 1.0
        }
        if self.viewSize.width / totalRect.size.width < self.viewSize.height / totalRect.size.height {
            fit_scale = self.viewSize.width / totalRect.size.width * self.scale
        } else {
            fit_scale = self.viewSize.height / totalRect.size.height * self.scale
        }
        centering_margin_x = (self.viewSize.width / 2) - (totalRect.size.width * fit_scale / 2)
        centering_margin_y = (self.viewSize.height / 2) - (totalRect.size.height * fit_scale / 2)
        move_x = totalRect.origin.x * fit_scale
        move_y = totalRect.origin.y * fit_scale

        // draw scaled path
        for path_info: PathInfo in self.paths {
            let path = path_info.path

            // scaling path
            path.lineWidth = path.lineWidth * fit_scale
            path.apply(CGAffineTransform(scaleX: fit_scale, y: fit_scale))

            // move path
            path.apply(CGAffineTransform(translationX: centering_margin_x - move_x, y: centering_margin_y - move_y))

            // fill path
            if let fillColor = path_info.fillColor {
                fillColor.setFill()
                path.fill()
            }

            // stroke path
            if let strokeColor = path_info.strokeColor {
                strokeColor.setStroke()
                path.stroke()
            }
        }
    }
}
