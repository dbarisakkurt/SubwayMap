import SwiftUI
import StoreKit

struct SettingView: View {
    @Environment(AppSetting.self) private var settings
    @Environment(\.requestReview) var requestReview
    
    private let locales = [
        Locale(identifier: "en_US"),
        Locale(identifier: "tr_TR"),
    ]
    
    
    //TODO make favourite cities sticky!
    //TODO find real pdfs and load
    //TODO finish translations
    //TODO design about page and write terms of use and privacy policy
    
    var body: some View {
        @Bindable var settings = settings
        
        NavigationView {
            VStack {
                Toggle("Show favorites on top", isOn: $settings.showFavorites)
                    .toggleStyle(.switch)
                    .font(.headline)
                
                HStack {
                    Text("Select Language") // Title for the picker
                        .font(.headline)
                    Spacer()
                    Picker("Language", selection: $settings.locale) {
                        ForEach(locales, id: \.identifier) { locale in
                            if let langName = locale.localizedString(forLanguageCode: locale.identifier) {
                                Text(langName).tag(locale)
                            }
                            else {
                                Text(locale.identifier).tag(locale)
                            }
                            
                                        }
                    }
                    .pickerStyle(.automatic)
                    .onChange(of: settings.locale) { oldValue, newValue in
                        settings.locale = newValue
                    }
                }
                
                HStack {
                    Button("Rate the App") {
                        requestReview()
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .navigationTitle("Settings")
            .padding()
        }
    }
}

#Preview {
    var a = AppSetting()
    SettingView().environment(a)
}
