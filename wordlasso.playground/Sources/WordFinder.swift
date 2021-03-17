import Foundation

struct WordFinder {
    static let wildcard: Character = "."
    let wordList: [String]
    
    
    private func isMatch(template: String, with word: String) -> Bool {
        guard template.count == word.count else { return false }
        
        return template.indices.allSatisfy { index in
            template[index] == WordFinder.wildcard || template[index] == word[index]
        }
    }
    
    func findMatches(for template: String) -> [String] {
        return wordList.filter { candidate in
            isMatch(template: template,
                    with: candidate)
        }
    }
    
    
    
    
}
