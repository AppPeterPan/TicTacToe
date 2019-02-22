//
//  GridView.swift
//  TicTacToe
//
//  Created by SHIH-YING PAN on 2019/2/20.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit

class GridView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath()
        let squareWidth: CGFloat = 110
        let lineWidth: CGFloat = 12.5
        
        var y = squareWidth + lineWidth / 2
        path.move(to: CGPoint(x: 0, y: y))
        path.addLine(to: CGPoint(x: rect.width, y: y))
        
        y += squareWidth + lineWidth
        path.move(to: CGPoint(x: 0, y: y))
        path.addLine(to: CGPoint(x: rect.width, y: y))
        
        var x = squareWidth + lineWidth / 2
        path.move(to: CGPoint(x: x, y: 0))
        path.addLine(to: CGPoint(x: x, y: rect.height))
        
        x += squareWidth + lineWidth
        path.move(to: CGPoint(x: x, y: 0))
        path.addLine(to: CGPoint(x: x, y: rect.height))
        
        path.lineWidth = lineWidth
        UIColor.purple.setStroke()
        path.stroke()

    }
    

}
