//: Playground - noun: a place where people can play

import UIKit

let number = 743



func checkForPrime(number: Int) -> String{
    var count = 3
    var result: String?
    while count != (number+1) {
        if (number % count == 0) && (number != count){
            result = "Number is not Prime, divisible by \(count)"
            break
        }else if count != number{
            count+=2
        }else {
            result =  "Number is prime"
            break
        }
    }
    return result!
}

print(checkForPrime(number: number))