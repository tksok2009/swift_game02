//
//  Myclass.swift
//  pagebase
//
//  Created by toysking on 2016/08/17.
//  Copyright © 2016年 toysking. All rights reserved.
//

import Foundation

class Playcard {
    
    func sums(a :Int)->Int{
        return 10;
    }
    
    
    func CreateArray(names :String) -> Array<String> {
        
        let array = ["1","2","3","4","5","6","7","8","9","10","11","12"]
        
        let newarray = array.map{names + $0}
        
        return newarray;
    }
}
