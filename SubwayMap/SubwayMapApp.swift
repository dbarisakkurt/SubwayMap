import SwiftUI

@main
struct SubwayMapApp: App {
    @State private var settings = AppSetting()
    
    var body: some Scene {
        WindowGroup {
            CityListView()
                .environment(settings)
                .environment(\.locale, settings.locale)
        }
    }
}
