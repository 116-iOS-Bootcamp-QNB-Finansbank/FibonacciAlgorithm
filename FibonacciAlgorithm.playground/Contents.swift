import UIKit

func CreateFibonacciArray( count : Int) -> [Double]
{
    var fibonacciArray = [Double](repeating: 0, count: count)
    let number1 : Double = 0
    let number2 : Double = 1
    
    
    fibonacciArray[0] = number1  // ilk elaman eklenir
    fibonacciArray[1] = number2  // ikinci elaman eklenir
    
    for index in 2...count {
        fibonacciArray[index] = fibonacciArray[index-2] + fibonacciArray[index-1] // Sonraki fibonacci sayısı
    }

    return fibonacciArray
}


let count : Int = 1000
var fibonacciArray  = CreateFibonacciArray(count : count)  // fibonacci dizisi oluşturulur.
var tempFibonacciArray = fibonacciArray[750..<fibonacciArray.count] // 750'den sonraki elamanlar

for index in 0...tempFibonacciArray.count {
     print(tempFibonacciArray[index])
}



