import UIKit

var rowArray = [10, 20, 30, 60, 100, 120]

// filter array with closure
func filterArrayWithClosure(array:[Int], condition:(Int)->Bool) -> [Int] {
    var filteredArray:[Int] = []
    
    for num in array {
        if condition(num) {
            filteredArray.append(num)
        }
    }
    return filteredArray
}

var resultArray:[Int]

// Execute filter with closure
resultArray = filterArrayWithClosure(array: rowArray) { (num)->Bool in
    return num > 80
}
print(resultArray)

// condition ">"
func filterConditonMoreThan(number:Int) -> Bool {
    return number > 60
}
// condition "=="
func filterConditonEqual(number:Int) -> Bool {
    return number == 60
}
// condition "<"
func filterConditonLessThan(number:Int) -> Bool {
    return number < 60
}

// Execute filter with closure (use function name)
// You can use any consitions above as condition parameter.
resultArray = filterArrayWithClosure(array: rowArray, condition: filterConditonEqual)
print(resultArray)




