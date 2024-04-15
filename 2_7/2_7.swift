
import Foundation

func findDestination(_ destinations: [(String, String)]) -> String {
    var map = [String: String]()
    for (from, to) in destinations {
        if from == to {
            return "обратитесь к специалисту"
        }
        map[from] = to
    }
    
    var current = destinations[0].0
    while let next = map[current] {
        current = next
    }
    return current
}

let destinations = [("Новосибирск", "Дубай"), ("Новосибирск", "Искитим"), ("Искитим", "Линево")]
print("Output: \(findDestination(destinations))")

