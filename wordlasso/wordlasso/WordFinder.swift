//
//  WordFinder.swift
//  wordlasso
//
//  Created by Franklin on 3/16/21.
//

import Foundation

struct WordFinder {
    static let wildcard: Character = "."
    let wordList: [String]
    let ignoreCase: Bool
    
    init(wordListPath: String, ignoreCase: Bool) throws {
        let wordLIstContent = try String(contentsOfFile: wordListPath)
        wordList = wordLIstContent.components(separatedBy: .newlines)
        self.ignoreCase = ignoreCase
    }
    
    private func caseCorrected(_ value: String) -> String {
        ignoreCase ? value.lowercased() : value
    }
    
    
    
    
    private func isMatch(template: String, with word: String) -> Bool {
        guard template.count == word.count else { return false }
        
        return template.indices.allSatisfy { index in
            template[index] == WordFinder.wildcard || template[index] == word[index]
        }
    }
    
    func findMatches(for template: String) -> [String] {
        return wordList.filter {candidate in
            isMatch(template: caseCorrected(template),
                    with: caseCorrected(candidate))
        }
    }
    
    
    
    
    
    
    
}
