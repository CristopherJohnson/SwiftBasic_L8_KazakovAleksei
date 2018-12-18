//
//  Apple.swift
//  L8_KazakovAleksei
//
//  Created by Алексей Казаков on 18/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import UIKit
import SpriteKit

class Apple: SKShapeNode {
    
    convenience init (position: CGPoint){
        self.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        fillColor = UIColor.red
        strokeColor = UIColor.red
        lineWidth = 5
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10.0, center: CGPoint(x: 5, y: 5))
        self.physicsBody?.categoryBitMask = CollisionCategories.Apple
        self.position = position 
    }
}
