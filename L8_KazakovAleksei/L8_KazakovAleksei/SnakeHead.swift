//
//  SnakeHead.swift
//  L8_KazakovAleksei
//
//  Created by Алексей Казаков on 18/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import UIKit

class SnakeHead: SnakeBodyPart {

    override init(atPoint point: CGPoint) {
        super.init(atPoint: point)
        self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        self.physicsBody?.contactTestBitMask = CollisionCategories.Apple | CollisionCategories.EdgeBody | CollisionCategories.Snake
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
