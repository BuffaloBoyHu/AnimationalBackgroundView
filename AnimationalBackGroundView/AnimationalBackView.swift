//
//  AnimationalBackView.swift
//  AnimationalBackGroundView
//
//  Created by HLH on 2017/2/16.
//  Copyright © 2017年 胡良海. All rights reserved.
//

import UIKit

class AnimationalBackView: UIView {

    fileprivate var gradientLayer : CAGradientLayer = {
      let layer = CAGradientLayer.init()
      layer.startPoint = CGPoint.init(x: 0, y: 0)
      layer.endPoint = CGPoint.init(x: 0, y: 1)
      layer.colors = [UIColor.colorWithHex(hex: 0xff8400, alpha: 1).cgColor, UIColor.colorWithHex(hex: 0xff7600, alpha: 1).cgColor]
      layer.locations = [0.5,1]
     return layer
    }()
    
    fileprivate var emitterLayer : CAEmitterLayer = {
        let layer = CAEmitterLayer.init()
        layer.emitterShape = kCAEmitterLayerRectangle // 发射形状
        layer.emitterMode = kCAEmitterLayerSurface // 放射模式
        layer.emitterSize = CGSize.init(width: 50, height: 50) // 发射源大小
        layer.renderMode = kCAEmitterLayerAdditive // 渲染模式
        layer.masksToBounds = true // 超出边框的不显示
        
        let cell = CAEmitterCell()
        cell.alphaRange = 1 // 透明度范围
        cell.birthRate = 5 // 每秒出生率
        cell.contents = #imageLiteral(resourceName: "animate_dot").cgImage // 要显示的内容
        cell.velocity = 0 // 初始速度
        cell.velocityRange = 100 //速度范围
        cell.lifetime = 120// 生命周期
        cell.lifetimeRange = 20 // 生命周期范围
        cell.scaleRange = 0.5 // 放大范围
        cell.emissionRange = CGFloat(2 * M_PI) // 发射的角度
        cell.xAcceleration = 0 // x轴加速度
        cell.yAcceleration = 0
        
       layer.emitterCells = [cell]
       return layer
    }()
    
   override init(frame: CGRect) {
        super.init(frame: frame)
        gradientLayer.frame = frame
        emitterLayer.emitterPosition = center
        emitterLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        layer.addSublayer(emitterLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
