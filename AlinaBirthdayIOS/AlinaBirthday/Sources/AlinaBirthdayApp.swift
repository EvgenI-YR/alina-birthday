import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://evgeni-yr.github.io/alina-birthday/")!)
            .ignoresSafeArea(edges: .bottom)
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.mediaTypesRequiringUserActionForPlayback = []
        
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.isOpaque = false
        webView.backgroundColor = UIColor(red: 1.0, green: 0.714, blue: 0.757, alpha: 1.0) // #FFB6C1
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

@main
struct AlinaBirthdayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
