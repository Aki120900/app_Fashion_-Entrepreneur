import SwiftUI

struct MaterialSearchView: View {
    var body: some View {
        VStack {
            // ScrollView to display the material list and store information
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Heading for the material list
                    Text("Material list:")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.top)

                    // HStack containing two columns of materials
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Cotton")
                            Text("Polyester")
                            Text("Wool")
                            Text("Silk")
                            Text("Linen")
                            Text("Rayon")
                            Text("Denim")
                            Text("Nylon")
                            Text("Spandex")
                            Text("Leather")
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Canvas")
                            Text("Leather")
                            Text("Faux leather")
                            Text("Nylon")
                            Text("Polyester")
                            Text("Denim")
                            Text("Magnetic closures")
                            Text("Zippers")
                            Text("Buckles")
                            Text("Cashmere")
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    // HStack containing store information
                    HStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Stores in London:")
                                .font(.headline)
                                .foregroundColor(.black)
                            Text("John Lewis & Partners")
                            Text("Cloth House")
                            Text("The London Fabric Shop")
                            
                            // Online stores heading
                            Text("Online:")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.top)
                            Text("Minerva Crafts")
                            Text("Sew Over It")
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        Spacer()
                    }
                }
                .padding()
            }
            
            // Bottom navigation bar
            HStack {
                Spacer()
                Button(action: {
                    // Navigate to Home
                    print("Home button tapped")
                }) {
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
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

struct MaterialSearchView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MaterialSearchView()
                .previewDevice("iPhone 15 Pro")
                .previewDisplayName("Default")
        }
    }
}

