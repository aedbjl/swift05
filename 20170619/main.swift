//
//  main.swift
//  20170619
//
//  Created by iii-user on 2017/6/19.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

//屬性擴張
extension Brad01{
//    var y = 2 //計算型的屬性才能擴張
    var y:Int { return x * 2 } //get
}

var Obj1 = Brad01()
print(Obj1.y)

extension Double {  //struct
    var m : Double { return self }
    var km : Double { return self / 1000.0}
    var cm : Double { return self * 100.0}
}
var len = 123.0
print(len.m)
print(len.km)
print(len.cm)

extension Rect {
    var q :Int{return x + w / 2  }
    var e :Int{return y + h / 2 }
}
var Obj2 = Rect()
print(Obj2.q)
print(Obj2.e)

print("-------------------")
extension Brad01 {
    convenience init(x:Int){
        self.init()
        self.x = x
        
    }
    
}
var Obj3 = Brad01(x:4)
print(Obj3.x)
var Obj4 = Brad01()
print(Obj4.x)

extension Brad01{
    func m2(){
        x += 4
        print("Brad01:m2()x=\(x)")
    }
}
var Obj5 = Brad01()

Obj5.m2()

extension Brad02 {
    mutating func m2(){ //結構要加mutating
        x += 4
        print("Brad02:m2(): x = \(x)")
    }
}
var Obj6 = Brad02()
Obj6.m2()

extension Int {
    subscript (d:Int)->Int{
        var x1 = 1
        for _ in 0...d {
            x1 *= 10
        }
        var x2 = 1
        for _ in 0..<d {
            x2 *= 10
        }
        let x3 = self % x1
        let ret = x3 / x2
        
        return ret
    }
}
print(123[2])

//Protocol 協定
//只有定義，而無實作
//規格
