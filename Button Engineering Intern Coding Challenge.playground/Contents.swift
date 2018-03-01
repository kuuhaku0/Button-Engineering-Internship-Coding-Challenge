//: Playground - noun: a place where people can play

import Cocoa

var str = "- 1 - 2 3 - 2 3 +  n    1 - 20 + 50 20    dasf  -     10   hello world 10 still works? + 1 + 2 3 yup!   "

// Assuming there can be more than two numbers after an operator
// Assuming there can be multiple spaces between characters in input
// Assuming the string is not always formatted

func evaluate(_ expression: String) -> Int {
    let temp = expression.components(separatedBy: " ")
    var total: Int = 0
    var currentOperator = ""
    for i in temp {
        if i == "+" || i == "-" {
            currentOperator = i
            continue // perform next operation once currentOperator is set, so it doesn't get reset
        }
        guard let num = Int(i) else {continue} // if i cannot be converted into Int, go to next thing in temp
        switch currentOperator {
        case "+":
            total += num
        case "-":
            total -= num
        default:
            total += num
        }
    }
    return total
}
evaluate(str)

