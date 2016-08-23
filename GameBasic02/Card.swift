//
//  Card.swift
//  GameBasic02
//
//  Created by admin on 2016/08/22.
//  Copyright © 2016年 toysking. All rights reserved.
//
import SpriteKit

class Card: SKSpriteNode {
    
    var gameScene: SKScene!
    var ReverseCount: Int!
    var Janruname: String!
    var Numbers: Int!
    
    func setScene(scene: SKScene) {
        self.gameScene = scene
    }
    
    
    init() {
        let Texture = SKTexture(imageNamed: "png/c01")
        super.init(texture: Texture, color: UIColor.blueColor(), size: CGSizeMake(150, 100))
        self.position = CGPointMake(0, 0)
        self.anchorPoint = CGPointMake(0, 0)
        //self.name = "0"
        self.ReverseCount = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetName(named: Int,janru: String,ids: Int){
        //print(named)
        self.name = String(ids)
        self.Numbers = named
        self.Janruname = janru
        
        //let numbe = String(named)
        //let Texture = SKTexture(imageNamed: "png/" + janru + "0" + numbe)
        let Texture = SKTexture(imageNamed: "png/z01")
        
        self.texture = Texture;
    }
    
    func SetPosit(Xx: Int, Yy: Int){
        let x = CGFloat(Xx)
        let y = CGFloat(Yy)
        self.position = CGPointMake(x,y)
    }
    
    func ReverseCard() {
        
        if self.ReverseCount == 0 {
            let janru = self.Janruname
            let numb = String(self.Numbers)
            let Texture = SKTexture(imageNamed: "png/" + janru + "0" + numb)
            self.texture = Texture;
            self.ReverseCount = 1
        } else {
            let Texture = SKTexture(imageNamed: "png/z01")
            self.texture = Texture;
            self.ReverseCount = 0
        }
        
    }
    
}