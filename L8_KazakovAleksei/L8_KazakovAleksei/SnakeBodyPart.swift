//
//  SnakeBodyPart.swift
//  L8_KazakovAleksei
//
//  Created by Алексей Казаков on 18/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import UIKit
import  SpriteKit

class SnakeBodyPart: SKShapeNode {
    let diametr = 10.0
    
    init(atPoint point: CGPoint) {
        super.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: CGFloat(diametr), height: CGFloat(diametr))).cgPath
        fillColor = UIColor.green
        strokeColor = UIColor.green
        lineWidth = 5
        self.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(diametr - 4), center: CGPoint(x: 5, y: 5))
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = CollisionCategories.Snake
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple
        self.position = point
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
