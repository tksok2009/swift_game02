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
        
        
        //myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        //super.init(size: size)
        
        /* Setup your scene here */
        //let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        //myLabel.text = "Hello, World!";
        //myLabel.fontSize = 45;
        //myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        //self.addChild(myLabel)

        
        

        //Imgs = [SKSpriteNode(imageNamed:"png/z01")]
        //Imgs[0].position = CGPoint(x:400,y:140.0)
        //Imgs[0].xScale = 0.25
        //Imgs[0].yScale = 0.25
        //self.addChild(Imgs[0])
        //Imgs[0].name = "imgarrays01"

        
/*
        Imgs = [SKSpriteNode(imageNamed:"png/z01")]
        Imgs[0].position = CGPoint(x:400,y:140.0)
        Imgs[0].xScale = 0.3
        Imgs[0].yScale = 0.3
        self.addChild(Imgs[0])
        Imgs[0].name = "imgarrays01"
        
        Imgs.append(SKSpriteNode(imageNamed:"png/z02"))
        Imgs[1].position = CGPoint(x:300.0,y:210.0)
        Imgs[1].xScale = 0.3
        Imgs[1].yScale = 0.3
        self.addChild(Imgs[1])
        Imgs[1].name = "imgarrays01"
*/
        

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

        
        
        
        // 画像を生成.
        //myImage = SKSpriteNode(imageNamed: "png/c01")
        // 画像の描画場所を指定.
        //myImage.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        //myImage.position = CGPoint(x:600.0, y:600.0);

        //myImage.xScale = 0.3
        //myImage.yScale = 0.3
        // シーンに追加.
        //self.addChild(myImage)
        //myImage.name = "myimage"
    
   
        
        
        
        
        
        
        
        
        
        // 画像を生成.
        //myImage2 = SKSpriteNode(imageNamed: "png/c04")
        // 画像の描画場所を指定.
        //myImage2.position = CGPoint(x:500.0, y:390.0);
        //myImage2.xScale = 0.3
        //myImage2.yScale = 0.3
        // シーンに追加.
        //self.addChild(myImage2)
        //myImage2.name = "myimage2"
        
        
        
        
        
        
        // prepare array of playcard data
        let playcard = Playcard()
        var card1 = playcard.CreateArray("c")
        print(card1)
        
        
    
    
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
       /*
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        
        }
        */

        /*
        if count==0 {
        let Texture = SKTexture(imageNamed: "png/z01")
        myImage.texture = Texture
            count = 1
        }else{
            myImage.texture = nil
            count = 0
        }
        */
        
        // タッチされた場所の座標を取得.
        //let location = touch.locationInNode(self)
        
        // タッチされた場所に画像を移動.
        //myImage.position = location
        
        
 
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








    
