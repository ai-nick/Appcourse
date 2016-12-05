//: Playground - noun: a place where people can play

import UIKit

class Ghost {
    var is_alive = true
    var strength = 9
    func kill(){
        is_alive = false
    }
    
    func isStrong () -> Bool{
        if strength>10{
            return true
        }else{
            return false
        }
    
    }
}

var ghost = Ghost()

print(ghost.is_alive)

ghost.strength = 20

print(ghost.strength)

ghost.kill()

print(ghost.is_alive)
print(ghost.isStrong())
