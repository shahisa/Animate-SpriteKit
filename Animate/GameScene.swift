//
//  GameScene.swift
//  Animate
//
//  Created by Isaiah Weaver on 5/9/16.
//  Copyright (c) 2016 Mobile Shah. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var mainGuy = SKSpriteNode()
    var textureAtlas = SKTextureAtlas()
    var textureArray = [SKTexture]()
    
    
    override func didMoveToView(view: SKView) {
        textureAtlas = SKTextureAtlas(named: "Images")
        for i in 1...textureAtlas.textureNames.count{
            var name = "win_\(i).png"
            textureArray.append(SKTexture(imageNamed: name))
        }
        mainGuy = SKSpriteNode(imageNamed: "win_1.png")
        mainGuy.size = CGSize(width: 70, height: 140)
        mainGuy.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        self.addChild(mainGuy)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        mainGuy.runAction(SKAction.repeatActionForever(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1)))
            }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
