//
//  GameScene.swift
//  GameBasic02
//
//  Created by toysking on 2016/08/20.
//  Copyright (c) 2016年 toysking. All rights reserved.
//

import SpriteKit
import Foundation

class GameScene: SKScene {
 
    var cards :Array<Card>! = []
    var count :Int = 1
    var card1 :Int! = 0
    var card2 :Int! = 100
    
    
    
    override func didMoveToView(view: SKView) {
        
        self.size = self.frame.size
        
        print(self.size)
        self.name = "seennode"
        
        
        // カードの生成。
        let card = Card()
        cards = [card]
        
        cards[0].setScene(self)
        cards[0].SetPosit(150,Yy:200)
        cards[0].SetName(1,janru: "z",ids: 0)
        //self.addChild(cards[0])

        
        var i = 1
        var h = 1
        var jj = ["c","d","h","s"]
        var k = 0
        for e in 1...8 {
            for u in 1...6{
                
                let card = Card()
                cards.append(card)
                cards[h].setScene(self)
                
                //cards[i].SetPosit(10 + ((i-1) * 155), Yy: 100)
                cards[h].SetPosit( 20 + ((u-1) * 165), Yy: (30 + 90 * (e-1) ) )
                
                cards[h].SetName(i,janru: jj[k],ids: h)
                
                self.addChild(cards[h])

                if i > 12{
                i = 0
                k = k + 1
                }
                i = i + 1
                h = h + 1
                
            }
        }
        
        
        
        
        
        // prepare array of playcard data
        let playcard = Playcard()
        let card1 = playcard.CreateArray("c")
        print(card1)
        
        
    
    
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        
 
        for touch in touches {
            let touchlocation = touch.locationInNode(self)
            //print(touchlocation)

            
            // タッチ位置にあったNode.
            let node : SKNode? = self.nodeAtPoint(touchlocation)
            
            
            
            
            
            
            if node != nil {
                let ss = node?.name
                
                //print(ss!)
                
                if ss! != "seennode" {
                    
                    
                    
                    
                    
                    let ii = Int(ss!)
                    //print(ii)

                    
                if self.card1 != ii {
                    
                    if self.count == 1 {
                        
                        
                        cards[ii!].ReverseCard(self.count)
                        self.count = self.count + 1
                        self.card1 = ii!
                        
                        
                    }else if self.count == 2{

                        cards[ii!].ReverseCard(self.count)
                        self.count = self.count + 1
                        self.card2 = ii!
                        let ca0 = self.card1
                        
                        
                        
                        if self.card2 == ca0 {
                            print("hit!!")
                        }else{
                            print("not!")
                        }

                    
                        
                    //}else{
                        self.count = 4
                        //リセット
                        var timer:NSTimer = NSTimer()
                        timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
                                                                       target: self,
                                                                       selector: "changeView",
                                                                       userInfo: nil,
                                                                       repeats: false)
                        

                    
                    }
                    
                }
                    
                    
                    
                    
                }
                
            }
            
            
            
        }
        
        
        
    }
    
   
    
    func changeView() {
        let ca1 = self.card1
        let ca2 = self.card2
        
        print(ca1)
        print(ca2)
        
        cards[ca1].Resetcard();
        cards[ca2].Resetcard();
        
        self.count = 1
        
        //self.performSegueWithIdentifier("toGreen", sender: nil)
    }
    
    

    
    
    
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}








    
