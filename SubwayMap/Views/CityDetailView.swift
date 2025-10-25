import SwiftUI

struct CityDetailView: View {
    let city: City
    
    var body: some View {
        HStack {
            if let pdfURL = Bundle.main.url(forResource: city.fileName, withExtension: "pdf") {
                PdfViewer(url: pdfURL)
                    .edgesIgnoringSafeArea(.all) // Make it fullscreen
            } else {
                Text("PDF file not found.")
            }
        }
    }
}

#Preview {
    CityDetailView(city: City(name: "Istanbul", country: "Turkey", fileName: "amsterdam"))
}
