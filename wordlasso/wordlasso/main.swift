//
//  main.swift
//  wordlasso
//
//  Created by Franklin on 3/16/21.
//

import Foundation

struct Wordlasso {
    func run() throws {
        //let wordList = ["Wolf", "wolf", "word", "works", "woo"]
        //let wordFinder = WordFinder(wordList: wordList, ignoreCase: true)
        let path = "/usr/share/dict/words"
        let wordFinder = try WordFinder(wordListPath: path, ignoreCase: true)
        
        let args = CommandLine.arguments
        print("Command-line arguments: \(args)")
        
        
        
        
        //let template = "wo.."
        
        
        //let template: String
        if args.count > 1 {
            let template = args[1]
            findAndPrintMatches(for: template, using: wordFinder)
        } else {
            while true {
            //template = ""
            //#warning("ask the user for input interactively")
            print("Enter the word template: ", terminator: "")
            //template = readLine() ?? ""
            let template = readLine() ?? ""
            if template.isEmpty { return }
            findAndPrintMatches(for: template, using: wordFinder)
            }
        }
        
//        let matches = wordFinder.findMatches(for: template)
//        print("found \(matches.count) \(matches.count == 1 ? "match" : "matches"):")
//        for match in matches {
//            print(match)
//        }
    }
    
    private func findAndPrintMatches(for template: String,
                                     using wordFinder: WordFinder) {
        let matches = wordFinder.findMatches(for: template)
        print("Found \(matches.count) \(matches.count == 1 ? "match" : "matches"):")
        for match in matches {
            print(match)
        }
    }
    
}

do {
    try Wordlasso().run()
} catch {
    fatalError("Program exited unexpectedly. \(error)")
}

