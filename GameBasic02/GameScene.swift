//
//  GameScene.swift
//  GameBasic02
//
//  Created by toysking on 2016/08/20.
//  Copyright (c) 2016年 toysking. All rights reserved.
//

import SpriteKit


var myImage :SKSpriteNode!
var myImage2 :SKSpriteNode!

var Imgs :Array<SKSpriteNode>! = []

var count :Int = 0


class GameScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        
        self.size = self.frame.size
        
        print(self.size)
        self.name = "seennode"
        
        
        

        Imgs = [SKSpriteNode(imageNamed:"png/z01")]
        
        // 768 / 12*60 / 300 * 200 /
        for i in 1...6{
            //Imgs.append(SKSpriteNode(imageNamed:"png/c0" + String(i)))
            Imgs.append(SKSpriteNode(imageNamed:"png/z01"))
 
            let Xx :Double = 5.0 + Double(i*165) - 65
            let Yy :Double = 100.0 //+ Double(i*20)
            
            Imgs[i].position = CGPoint(x:Xx,y:Yy)
            
            
            Imgs[i].xScale = 0.8
            Imgs[i].yScale = 0.45
            
            self.addChild(Imgs[i])
            Imgs[i].name = String(i)
            
        }


        
        
    
        
        
        // prepare array of playcard data
        let playcard = Playcard()
        var card1 = playcard.CreateArray("c")
        print(card1)
        
        
    
    
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        
 
        for touch in touches {
            let touchlocation = touch.locationInNode(self)
            
            
            //個別の場合
            /*
            if myImage.containsPoint(touchlocation)
            {
                //sprite contains touch
                print("touch")
            }
            */
            
            print(touchlocation)
            
            // タッチ位置にあったNode.
            var node : SKNode? = self.nodeAtPoint(touchlocation)
            
            
            if node != nil {
                var ss = node?.name
                print(ss!)
                
                if Int(ss!) > 0 {
                let Texture = SKTexture(imageNamed: "png/c0" + String(ss!))

                let ii = Int(ss!)
                Imgs[ii!].texture = Texture
                }
            }
            
            
            
        }
        
        
        
    }
    
   
    
    
    
    

    
    
    
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}








    
