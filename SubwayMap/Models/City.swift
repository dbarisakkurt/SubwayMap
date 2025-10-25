import Foundation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    let fileName: String
    var isFavorite: Bool
    
    init(name: String, country: String, fileName: String) {
        self.name = name
        self.country = country
        self.fileName = fileName
        self.isFavorite = false
    }
    
    mutating func toggleFavorite() {
        self.isFavorite = if self.isFavorite { false } else { true }
    }
}
