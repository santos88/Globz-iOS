//
//  GameScene.swift
//  Globz1
//
//  Created by Santos Ramon on 9/3/18.
//  Copyright © 2018 Santos Ramon. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let myNode = SKSpriteNode(imageNamed: "emoji")
    let myNode2 = SKSpriteNode(imageNamed: "emoji")

    override func didMove(to view: SKView) {
        basicGameBackup()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches {
//            let location = touch.location(in: self)
//            print(location.x, location.y)
//        }
        
        // TODO dibujar la línea
    }
    
    func basicGameBackup() {
        myNode.position = CGPoint(x: 20, y: 700)
        myNode.setScale(0.2)
        myNode.physicsBody = SKPhysicsBody(circleOfRadius: myNode.size.height / 2)
        myNode.physicsBody?.affectedByGravity = true
        self.addChild(myNode)
        
        myNode2.position = CGPoint(x: 100, y: 400)
        myNode2.setScale(0.2)
        myNode2.physicsBody = SKPhysicsBody(circleOfRadius: myNode.size.height / 2)
        myNode2.physicsBody?.affectedByGravity = false
        self.addChild(myNode2)
        
        // Left Wall
        let leftWall = SKNode()
        leftWall.physicsBody = SKPhysicsBody(edgeLoopFrom: CGRect(x: 0, y: 0, width: 1, height: self.frame.height))
        self.addChild(leftWall)
        
        // Right wall
        let rightWall = SKNode()
        rightWall.physicsBody = SKPhysicsBody(edgeLoopFrom: CGRect(x: self.frame.width - 1, y: 0, width: 1, height: self.frame.height))
        self.addChild(rightWall)
        
        // Top wall
        let topWall = SKNode()
        topWall.physicsBody = SKPhysicsBody(edgeLoopFrom: CGRect(x: 0, y: 0, width: self.frame.width, height: 1))
        self.addChild(topWall)
        
        // Bottom wall
        let bottomWall = SKNode()
        bottomWall.physicsBody = SKPhysicsBody(edgeLoopFrom: CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1))
        self.addChild(bottomWall)
        
        
    }

    
}
