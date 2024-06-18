import SwiftUI

class Coordinator: ObservableObject {
    @Published var currentView: String = "LoginView"
    
    func navigateToHome() {
        currentView = "HomeView"
    }
}

struct CoordinatorView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        Group {
            switch coordinator.currentView {
            case "LoginView":
                LoginView()
            case "HomeView":
                HomeView()
            default:
                LoginView()
            }
        }
    }
}
