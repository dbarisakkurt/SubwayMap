import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack {
                Button("Rate on App Store") {
                    
                }
                Text("Developed by baris")
                Text("Terms of use")
                Text("Privacy policy")
            }
        }
        .navigationTitle(Text("about"))
        .padding()
    }
}

#Preview {
    AboutView()
}
