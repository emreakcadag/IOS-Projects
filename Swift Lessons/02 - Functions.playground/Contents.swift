import UIKit

func getMilk(){
    print("Milk")
}

func getMilk2(howManyMilk: Int){
    print("get \(howManyMilk) milk")
}

func getMilk3(howManyMilk: Int) -> Int{
    
    return howManyMilk * 5
}







getMilk()

print("----------")

getMilk2(howManyMilk: 5)

print("----------")

let milks = getMilk3(howManyMilk: 5)

print(milks)

print("----------")


