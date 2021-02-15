import Cocoa


enum Token: CustomStringConvertible {
    case number(Int)
    case plus
    
    var description: String {
        switch self {
        case .number(let n):
            return "Number: \(n)"
        case .plus:
            return "Symbol: +"
        }
    }
}

class Lexer {
    enum Error: Swift.Error {
        case invalidCharacter(Character)
    }
    
    let input: String
    var position: String.Index
    
    init(input: String) {
        self.input = input
        self.position = input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        return input[position]
    }
    
    func advance(){
        assert(position < input.endIndex, "Cannot advance past endIndex!")
        position = input.index(after: position)
    }
    
    func getNumber() -> Int {
        var value = 0
        
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                // another digit - add it into value
                let digitValue = Int(String(nextCharacter))!
                value = 10*value + digitValue
                advance()
                
            default:
                // something unexpected - need to sned back an error
                return value
            }
        }
        return value
    }
    
    func lex() throws -> [Token]{
        var tokens = [Token]()
        
        while let nextCharacter = peek(){
            switch nextCharacter {
            case "0" ... "9":
                // start of a number - need to grab the rest
                //break // TODO: replace this with real work
                let value = getNumber()
                tokens.append(.number(value))
            
            
            case "+":
                tokens.append(.plus)
                advance()
                
            case " ":
                // just advance to ignore spaces
                advance()
                
            default:
                // something unexpected - need to send back an error
                //break // TODO: replace this with real work
                throw Lexer.Error.invalidCharacter(nextCharacter)
            }
        }
        return tokens
    }
}

func evaluate(_ input: String) {
    print("Evaluation: \(input)")
    let lexer = Lexer(input: input)
    let tokens = lexer.lex()
    print("Lexer outputs: \(tokens)")
}

evaluate("10 + 3 + 5")
evaluate("1 + 2 + three")
