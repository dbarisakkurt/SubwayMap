
import SwiftUI
import Observation

@Observable
class AppSetting {
    var showFavorites: Bool {
        didSet {
            UserDefaults.standard.set(showFavorites, forKey: "showFavorites")
        }
    }
    
    var locale: Locale {
        didSet {
            UserDefaults.standard.set(locale.identifier, forKey: "locale_identifier")
        }
    }
    
    init() {
        self.showFavorites = UserDefaults.standard.bool(forKey: "showFavorites")
        self.locale = Locale(identifier: UserDefaults.standard.string(forKey: "locale_identifier") ?? Locale.current.identifier)
    }
}
