import Foundation
import NaturalLanguage

class Scorer {
    let tagger = NLTagger(tagSchemes: [.sentimentScore])

    func score(_ text: String) {
        tagger.string = text
        tagger.enumerateTags(
            in: text.startIndex..<text.endIndex,
            unit: .paragraph,
            scheme: .sentimentScore,
            options: []) { _, _ in
                return false
            }
    }
}
