//
//  EdgeBorderButton.swift
//  YepShow
//
//  Created by Rey on 2018/8/9.
//  Copyright © 2018 Rey. All rights reserved.
//

import UIKit

/// 有边框的按钮
final class EdgeBorderButton: UIButton {
    
    let lineColor: UIColor = UIColor.yepBorderColor()
    let lineWidth: CGFloat = 1.0
    
    lazy var topLineLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.lineWidth = self.lineWidth
        layer.strokeColor = self.lineColor.cgColor
        return layer
    }()
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        layer.addSublayer(topLineLayer)
    }
    
    override func layoutSubviews() {
         super.layoutSubviews()
        
        let topPath = UIBezierPath()
        topPath.move(to: CGPoint(x: 0, y: 0.5))
        topPath.addLine(to: CGPoint(x: bounds.width, y: 0.5))
        
        topLineLayer.path = topPath.cgPath
    }
    
    

}
