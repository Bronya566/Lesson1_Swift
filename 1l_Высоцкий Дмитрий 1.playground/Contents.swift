import UIKit
import Foundation

/////////////////////Задание 1. Решение квадратного уравнения

func kvadrat(a: Int, b: Int, c: Int) -> (Double?, Double?) {
  //  var S = Int(pow(Double(x), Double(x))) - 2*x - 3
    let d = Int(pow(Double(b), 2)) - 4 * a * c
    let xSqrt = sqrt(Double(d))
    if (d < 0) {
        return (nil, nil)
        
    } else if (d == 0) {
        
        let x1: Double = Double((-b + Int(xSqrt)))/Double((2 * a))
        return (x1, nil)
    } else if (d > 0) {
        let x1 : Double = Double((-b + Int(xSqrt)))/Double((2 * a))
        let x2 : Double = Double((-b - Int(xSqrt)))/Double((2 * a))
        return (x1,x2)
    }
   return (nil , nil)
}
print(kvadrat(a: 1, b: -2, c: -3))
print(kvadrat(a: -1, b: -2, c: 15))
print(kvadrat(a: -2, b: -7, c: 15))

////////////Задание 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

func triangle(a: Double , b: Double)-> (Double,Double, Double){
    let S = (a * b) / 2
    let Q = pow(a, 2) + pow(b, 2)
    
    let QSqrt = sqrt(Double(Q))
    
    let P = a + b + QSqrt
    return (S , P, QSqrt)
    
}
print(triangle(a: 3, b: 4))

//////////////Задание  3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

func bank(cash: Double, percent: Double)-> Double {
    var sum = cash
    for _ in 0...4 {
        let sum1 = sum + sum * (percent/100)
        sum = sum1
    }
    
    return(sum)
}
print(bank(cash: 200, percent: 50))
