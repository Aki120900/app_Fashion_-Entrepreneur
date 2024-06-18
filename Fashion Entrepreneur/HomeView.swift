import SwiftUI

struct HomeView: View {
    // imge names and titles
    let categories = [
        ("pink_dress", "Pink dress for summer"),
        ("shirts", "Colorful shirts"),
        ("sweater", "Smart jumper for work"),
        ("hoodie", "University Hoodie"),
        ("red_dress", "Summer unique clothes"),
        ("traditional_dress", "Traditional dress")
    ]
    
    // Grid layout

    let columns = [
        GridItem(.flexible()), // with flexible columns
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    // I will create CategoryItem.swrift
                    ForEach(categories, id: \.0) { category in
                        CategoryItem(imageName: category.0, title: category.1)
                    }
                }
                .padding()
            }
            
            // navigation bar
            HStack {
                Spacer()
                Button(action: {
                    // Navigate to Home
                    print("Home button tapped")
                }) {
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black) // Icon color - Home
                        .opacity(0.7) // Transparent
                }
                Spacer()
                Button(action: {
                    // Navigate to Chat
                    print("Chat button tapped")
                }) {
                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .opacity(0.7)
                }
                Spacer()
                Button(action: {
                    // Navigate to Shop
                    print("Shop button tapped")
                }) {
                    Image(systemName: "bag.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .opacity(0.7)
                }
                Spacer()
                Button(action: {
                    // Navigate to Profile
                    print("Profile button tapped")
                }) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .opacity(0.7)
                }
                Spacer()
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
        }
        .background(Color("CustomBackgroundLight").edgesIgnoringSafeArea(.all))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 15 Pro")
    }
}
