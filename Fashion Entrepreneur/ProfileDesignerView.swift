import SwiftUI

struct ProfileDesignerView: View {
    var body: some View {
        VStack {
            // ScrollView to display profile information
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // HStack for profile image and basic info
                    HStack {
                        Image("profile_designer")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Name: Victoria Styles")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Text("Location: New York")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("Occupation: Fashion Designer")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("Company name: Freelancer")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    // VStack for detailed info
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Background:")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("""
                        After graduating from the Fashion Institute of Technology, Victoria launched her own label, focusing on creating stylish yet eco-friendly clothing.
                        """)
                            .font(.body)
                            .foregroundColor(.black)
                        
                        Text("Goals:")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.top)
                        
                        Text("Establish her brand as a leader in sustainable fashion.")
                            .font(.body)
                            .foregroundColor(.black)
                        
                        // HStack for action buttons
                        HStack {
                            Spacer()
                            Button(action: {
                                // Chat Button - feedback
                                print("Chat button tapped")
                            }) {
                                VStack {
                                    Image(systemName: "message.fill")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.black)
                                    Text("CHAT")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                            Button(action: {
                                // Favorite Button
                                print("Favorite button tapped")
                            }) {
                                VStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.black)
                                    Text("FAVORITE")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                        }
                        .padding(.top)
                    }
                    .padding()
                    .background(Color("PostBox"))
                    .cornerRadius(10)
                }
                .padding()
            }
            
            // Bottom navigation bar
            HStack {
                Spacer()
                Button(action: {
                    // Home Button
                    print("Home button tapped")
                }) {
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {
                    // Chat Button
                    print("Chat button tapped")
                }) {
                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {
                    // Shop Button
                    print("Shop button tapped")
                }) {
                    Image(systemName: "bag.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {
                    // Profile Button
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

struct ProfileDesignerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileDesignerView()
                .previewDevice("iPhone 15 Pro")
                .previewDisplayName("Default")
        }
    }
}

