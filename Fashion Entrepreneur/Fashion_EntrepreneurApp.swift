import SwiftUI

@main
struct Fashion_EntrepreneurApp: App {
    @StateObject private var coordinator = Coordinator()
    
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
                .environmentObject(coordinator)
        }
    }
}
