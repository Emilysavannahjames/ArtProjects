//
//  DrawingView.swift
//  ArtProjects
//
//  Created by James, Emily on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    public override func draw(_ rect: CGRect) -> Void
     {
        // Drawing code
    }

    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                       radius: CGFloat(20),
                       startAngle: CGFloat(0),
                       endAngle: CGFloat(2) * CGFloat.pi,
                       clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
}
