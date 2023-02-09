//Create a Class to Represent a Calculator
class Calculator {
    // Create a Divide Function
// Check for division by zero inside your function and throw an error
    func Divide(x:Double,y:Double)throws ->Double{
        if y==0{
            throw CalcError.divitionbyZero
        }else {
            return x/y
        }
    }
}

//Initialize a new Calculator class object
let calc = Calculator()

//Call the function to divide 2 Numbers
//Use do-catch on function call to Handle Errors
do {
    let result = try calc.Divide(x: 5, y: 0)
    print(result)
}
catch CalcError.divitionbyZero{
    print("Divition by zero detected!")
}
//Note: You will run into a problem should you try to set the second argument of the function call to 0. Unfortunately, with the way computers are built, dividing any number by 0 is not allowed and an error will be thrown. Such an error will make the application crash.

//Create a custom enumeration for Errors

enum CalcError:Error{
    case divitionbyZero
}

//
