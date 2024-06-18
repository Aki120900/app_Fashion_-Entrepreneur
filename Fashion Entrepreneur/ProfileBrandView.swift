import SwiftUI

struct ProfileBrandView: View {
    var body: some View {
        VStack {
            // ScrollView to display profile information
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // HStack for profile image and basic info
                    HStack {
                        Image("profile_brand")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Brand Name: Compere")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Text("Location: New York")
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
                        
                        Text("Compere is a sustainable fashion brand dedicated to creating stylish and eco-friendly clothing.")
                            .font(.body)
                            .foregroundColor(.black)
                        
                        Text("Goals:")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.top)
                        
                        Text("Increase brand visibility and attract a larger audience.")
                            .font(.body)
                            .foregroundColor(.black)
                        
                        Text("Motivations:")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.top)
                        
                        Text("Scale the brand responsibly and sustainably.")
                            .font(.body)
                            .foregroundColor(.black)
                        
                        Text("Market Reach: National, with plans for international expansion.")
                            .font(.subheadline)
                            .foregroundColor(.black)
                        
                        // HStack for action buttons
                        HStack {
                            Spacer()
                            Button(action: {
                                // Chat Button - Feedback for this post
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
                                // Favorite button
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

struct ProfileBrandView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileBrandView()
                .previewDevice("iPhone 15 Pro")
                .previewDisplayName("Default")
        }
    }
}

