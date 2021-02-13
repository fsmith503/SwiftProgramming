import Cocoa







func printTable(_ data: [[String]], withColumnLabels columnLabels: [String]){
    // create header row containing column headers
    var headerRow = "|"
    
    // also keep track of the width of each column
    var columnWidths = [Int]()
    
    
    for columnLabel in columnLabels {
        let columnHeader = "\(columnLabel) |"
        headerRow += columnHeader
        columnWidths.append(columnLabel.count)
    }
    print(headerRow)
    
    for row in data {
        //start the output string
        var out = "|"
        
        // append each item in this row to the string
        //for item in row  {
            //out += "\(item) |"
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnWidths[j] - item.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " |(padding)\(item) |"
        }
        // done - print it!
        print(out)
    }
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExpereince: Int
}

struct Department {
    let name: String
    var people = [Person]()
    
    init(name: String){
        self.name = name
    }
    
    mutating func add(_ person: Person){
        people.append(person)
    }
}


var department = Department(name: "Engineering")
department.add(Person(name: "Eva", age: 30, yearsOfExpereince: 6))
department.add(Person(name: "Saleh", age: 40, yearsOfExpereince: 18))

//department.add(Person(name: "Amit", age: 50), yearsOfExperience: 20))

