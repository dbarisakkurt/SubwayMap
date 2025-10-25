import SwiftUI
import PDFKit

struct PdfViewer: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true // Automatically scales the PDF to fit the view
        pdfView.displayMode = .singlePageContinuous
        pdfView.displayDirection = .vertical
        pdfView.usePageViewController(true)
        
        if let document = PDFDocument(url: url) {
            pdfView.document = document
        }
        return pdfView
    }

    func updateUIView(_ uiView: PDFView, context: Context) {
        // No update logic needed for now
    }
}

#Preview {
    if let pdfURL = Bundle.main.url(forResource: "drs", withExtension: "pdf") {
        PdfViewer(url: pdfURL)
            .edgesIgnoringSafeArea(.all) // Make it fullscreen
    } else {
        Text("PDF file not found.")
    }
}
