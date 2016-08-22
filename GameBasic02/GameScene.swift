//
//  GameScene.swift
//  GameBasic02
//
//  Created by toysking on 2016/08/20.
//  Copyright (c) 2016年 toysking. All rights reserved.
//

import SpriteKit


//var myImage :SKSpriteNode!
//var myImage2 :SKSpriteNode!

//var Imgs :Array<SKSpriteNode>! = []


class GameScene: SKScene {
 
    var cards :Array<Card>! = []
    var count :Int = 0
  
    
    override func didMoveToView(view: SKView) {
        
        self.size = self.frame.size
        
        print(self.size)
        self.name = "seennode"
        
        
        // 敵の生成。
        let card = Card()
        cards = [card]
        
        cards[0].setScene(self)
        cards[0].SetPosit(150,Yy:200)
        cards[0].SetName("1")
        //self.addChild(cards[0])

        
        for i in 1...6{
            let card = Card()
            cards.append(card)
            cards[i].setScene(self)
            cards[i].SetPosit(10 + (i * 165), Yy: 100)
            cards[i].SetName(String(i))

            self.addChild(cards[i])
        }
        
        //Imgs = [SKSpriteNode(imageNamed:"png/z01")]
        // 768 / 12*60 / 300 * 200 /
        /*
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
        */

        
        
    
        
        
        // prepare array of playcard data
        let playcard = Playcard()
        let card1 = playcard.CreateArray("c")
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
                
                if Int(ss!) >= 0 {
                let ii = Int(ss!)
                cards[ii!].ReverseCard()
                    
                }
            }
            
            
            
        }
        
        
        
    }
    
   
    
    
    
    

    
    
    
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}








    
