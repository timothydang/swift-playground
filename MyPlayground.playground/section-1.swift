// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var str2 = "Hello World from Swift"

var hv3:String = "blah"
var h2:Int = 100

let isGreat:Bool = true

var o = "the dsad is \(h2)"

var arr = ["Spade", "Heart", "Club", "Diamond"]

arr[1]

var cardValue = [2, 3, 4, 5, 6]

cardValue += [7, 8]

var picCard:Dictionary<String, Int> = ["Jack": 11, "Queen": 12]

picCard["Jack"]

var day = "Monday"

if day == "Tuesday" {
    println("Its Tuesday")
} else if day == "" {

} else {
    println("")
}

switch day {
    case "Monday": println("Monday")
    case "Tuesday": println("Tuesday")
    default: println("blah")
}

for number in 1...4 {
    println("\(number)")
}

var dow = ["M", "T", "W", "Th", "F"]
for day in dow {
    println(day)
}

class vehicle {
    var vehicleType: String?
    var numberOfWheels: Int?
}

let myCar = vehicle()
myCar.vehicleType = "Car"
myCar.numberOfWheels = 4

class car: vehicle {
    init() {
        super.init()
        vehicleType = "String"
        numberOfWheels = 4
    }

    func getTopSpeed() -> Int {
        return 120
    }
}

let myNewCar = car()
myNewCar.vehicleType
myNewCar.numberOfWheels
myNewCar.getTopSpeed()

func myFunction(personName: String) -> String {
    return "Hi \(personName)"
}

myFunction("Tim")














