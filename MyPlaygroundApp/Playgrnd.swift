//
//  Playgrnd.swift
//  MyPlaygroundApp
//
//  Created by Gaurav on 15/11/17.
//  Copyright © 2017 Gaurav. All rights reserved.
//

import Foundation
// clousure
import UIKit

var str = "Hello, playground"

func sum (x:Int,y:Int) -> Int{
    return x + y
}

let total = sum(x: 5, y: 6)
print(total)

let sumClosure:(Int,Int) -> Int = { (x, y) in
    return x + y
}
sumClosure(7, 6)

let sumwClosure:(Int,Int) -> Int = {
    return $0 + $1
}
sumwClosure(9, 9)



// error handling


//: Playground - noun: a place where people can play

enum criteria : Error {
    case minus
    case limit
}

func calculateSum(x:Int,y:Int) throws ->  Int {
    
    if (x + y) > 500 {
        throw criteria.limit
    }
    
    if (x+y) < 0  {
        throw criteria.minus
    }
    
    return x + y
    
}

do {
    try calculateSum(x: -80, y: 5)
    
} catch criteria.limit {
    print("you exceed limit")
} catch criteria.minus {
    print("minus")
}



// mm_play
//: Playground - noun: a place where people can play

class Person {
    let name:String
    weak var book:Book?
    
    init(myname: String) {
        self.name = myname
        print("i am \(myname)")
    }
    
    deinit {
        print("I am gone \(self.name)")
    }
    
}

class Book {
    
    let bookname:String
    weak var person:Person?
    
    init(mbookName:String) {
        self.bookname = mbookName
        print("my book is \(self.bookname)")
    }
    
    deinit {
        print("book is gone \(self.bookname)")
    }
    
}


//Person(myname: "hello")

var objP:Person? = Person(myname: "hi")
//objP = nil


//Book(mbookName: "abc")

var bookxyz:Book? = Book(mbookName: "xyz")
//bookxyz = nil

//var objB:Book? = Book(
objP?.book = bookxyz
bookxyz?.person = objP

objP = nil
bookxyz = nil




// myplaygr
//: Playground - noun: a place where people can play

import UIKit

class Human {
    var name:String?
    var legs:Int = 2
    var hands:Int = 2
    
    func intro() {
        print("i am here")
    }
    
}

class Country:Human {
    var countryname:String = "India"
    
    override func intro() {
        print("my country is india")
    }
    
    func intro(pincode:String) {
        print("my country code is \(pincode)")
    }
    
}

var obj = Country()
obj.countryname = "India"
obj.name = "abc"
obj.intro()
obj.intro(pincode: "380012")








// optinal

//: Playground - noun: a place where people can play

import UIKit

var no = 54465

// normal string
var name:String = "abc"
// optinal string
var optname:String? = "xyz"

print(name)
print(optname ?? "dd")


// convert ? to normal type
// implicit, force unwraping
var sentence = name + optname!

var neww:String? = "hi hello"



//var newwww:String = nil

// unimplicit unwrapping
if let somevl = neww {
    
    print(somevl)
    
}









// structure

//: Playground - noun: a place where people can play

import UIKit

let mydetails = ["name":"gaurav","eyes_color":"black","hair_color":"brown"]
let abcdetails = ["name":"abc","eyes_color":"yellow","hair_color":"red"]
let xyzdetails = ["name":"xyz","eyes_color":"green","hair_color":"white"]

struct profile {
    var name:String
    var age:String
    var education:String
    
    func sayyourinfo() {
        print("my name is \(self.name) and I am \(age) years old.")
    }
}

let myprofile = profile(name: "gaurav", age: "5", education: "ddd")
let abcprofile = profile(name: "abc", age: "23", education: "dddf")
let xyzprofile = profile(name: "xyz", age: "33", education: "kuku")

myprofile.name
abcprofile.name
xyzprofile.name

myprofile.sayyourinfo()
abcprofile.sayyourinfo()

struct sum {
    var x:Int
    var y:Int
    // computed property
    var sumX:Int {
        return x + y
    }
    
}

let mysum = sum(x: 5, y: 7)
mysum.sumX
print(mysum.sumX)








// testmyplay

//: Playground - noun: a place where people can play

class assecorries {
    
    func sitcoverInfo() {
        fatalError("must be overridden")
    }
}

class car:assecorries {
    var model:String?
    var topspeed:Int?
    var color:String?
    var yearofmanufacture:String?
    
    override init() {
        print("init")
        
    }
    
    func start() -> Bool {
        print("started")
        return true
    }
    func move() -> Bool {
        print("moved")
        return true
    }
    
    func brake() -> Bool {
        print("brake")
        return true
    }
    
}

class renault: car {
    
    override func start() -> Bool {
        print("renault started")
        return true
    }
    
    func move(x:Int) -> Bool {
        print("moved 10 km")
        return true
    }
    
    override func sitcoverInfo() {
        print("standard covers")
    }
    
}

let duster = renault()
duster.model = "SUV"
duster.topspeed = 180
duster.color = "red"
duster.yearofmanufacture = "2009"

duster.move()
duster.start()
duster.move(x: 5)

duster.sitcoverInfo()






// tuples
//: Playground - noun: a place where people can play

let firstScore = (name: "Bob", score: 9)

firstScore.0
firstScore.score



















