// NSPredicate playground answers


// Cao
// Hello World: filter all people aged 50 years old, then everyone called Zeppo
let just50 = NSPredicate(format: "age == 50")
people.filtered(using: just50)

let allZappos = NSPredicate(format: "name = %@", NSString(string: "Zeppo"))
people.filtered(using: allZappos)


// Mondale
// UsingVariablesInPredicates: filter the person with name Groucho

let grouchoPeople = NSPredicate(format: "name = %@", NSString(string: "Groucho"))
people.filtered(using: grouchoPeople)


// Nick
// UsingVariablesInPredicates: filter all people aged equal or over 50

let overFifty = NSPredicate(format: "age >= %@", NSNumber(value: 50))
people.filtered(using: overFifty)


// Jess
// KeyPaths: filter all people living in New York
let allInNY = NSPredicate(format: "%K = %@", "city.name", "New York")
people.filtered(using: allInNY)


// Henry & Adriana 
// KeyPaths: Filter all people living in the California State
// Note: You need a State class & update the City class

let allInCA = NSPredicate(format: "%K == %@", "city.state.name", "California")
print(people.filtered(using: allInCA))


// Angelina
// Operators: filter all people that's not 50 years old
let notFifty = NSPredicate(format: "age != %i", 50)
people.filtered(using: notFifty)


// Samuel
// Operators: filter all people younger that 60 years old
people.filtered(using: NSPredicate(format: "age < %i", 60))

// Angelina
// filter provinces to show all with names ending in d
let endsWithD = NSPredicate(format: "name ENDSWITH %@", "d")
provinces.filtered(using: endsWithD)

// Henry
// filter provinces to show all with names ending in o
print(provinces.filtered(using: NSPredicate(format: "name like '*o'")))


// Jess
// using contains, all provinces that contain an "a"

let provincesWithA = NSPredicate(format: "name contains [cd] 'a'")
print(provinces.filtered(using: provincesWithA))


// Cao
// using composition, all people with age 61 AND who lives in NYC

let pred = NSPredicate(format: "%K = %@ AND age = %d", "city.name", "New York", 61)
print(people.filtered(using: pred))
