import SwiftUI

//cities.filter{$0.country == "Turkey"}

struct CityListView: View {
    @Environment(AppSetting.self) private var settings
    @State var cities = DataLoader.loadData()
    
    var body: some View {
        NavigationView {
            List {
                if settings.showFavorites {
                    Section(header: Text("Favorites")) {
                        ForEach(cities.indices.filter { cities[$0].isFavorite }, id: \.self) { index in
                            let city = cities[index]
                            Text(city.name)
                        }
                    }
                }
                Section(header: Text("Cities")) {
                    ForEach($cities) { $city in
                        NavigationLink(destination: CityDetailView(city: city)) {
                            HStack {
                                Text(city.name)
                                Spacer()
                                Button(action: { city.toggleFavorite() }) {
                                    Image(systemName: city.isFavorite ? "star.fill" : "star")
                                                                .foregroundColor(city.isFavorite ? .yellow : .gray)
                                                        }
                                                        .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }
            }
            .navigationTitle("Cities")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "gear")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                    }
                }
            }
        }
    }
}

#Preview {
    var appSetting = AppSetting()
    CityListView().environment(appSetting)
}
