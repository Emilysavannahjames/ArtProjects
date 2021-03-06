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
        createStickFigure().stroke()
        drawTurtle()
    }

    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.black.setStroke()
        figure.lineWidth = 3.0
        
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
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y:  350))
        logo.close()
        logo.fill()
    }
    
   // private func drawSquare() -> Void
    //{
        //let logo = UIBezierPath()
        //UIColor.blue.setFill()
       // logo.move(to: CGPoint(x: 50, y: 50))
       // logo.addLine(to: CGPoint(x: 100, y: 100))
       // logo.move(to: CGPoint(x: 50, y: 100))
        //logo.addLine(to: CGPoint(x: 50, y: 100))
       // logo.close()
        //logo.fill()
        
    //}
}
