import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            // Setting the preferred color scheme to light for the ContentView
                .preferredColorScheme(.light)
        }
    }
}
