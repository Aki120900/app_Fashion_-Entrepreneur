import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            // HStack containing the image and project details
            HStack {
                // Image of the project
                Image("hoodie")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .padding()
                
                // VStack for project details
                VStack(alignment: .leading) {
                    Text("Project Name: University Hoodie Design")
                        .font(.body)
                        .foregroundColor(.black)
                        .background(Color("PostBox"))
                        .padding([.bottom], 2)
                    
                    Text("Brand: Cambridge University")
                        .font(.body)
                        .foregroundColor(.black)
                        .background(Color("PostBox"))
                        .padding([.bottom], 2)
                    
                    Text("Progress: Choosing Color Sets")
                        .font(.body)
                        .foregroundColor(.black)
                        .background(Color("PostBox"))
                        .padding([.bottom], 2)
                    
                    Text("Feedback: Please let us know which color you would prefer to get for your hoodie")
                        .font(.body)
                        .foregroundColor(.black)
                        .background(Color("PostBox"))
                        .padding([.bottom], 2)
                }
                .padding(.leading, 10)
            }
            
            // HStack for the rating section
            HStack {
                Text("Rating")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color("RatingStars"))
                    .cornerRadius(5)
                
                // Displaying the rating stars
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding(2)
                        .background(Color("RatingStars"))
                        .cornerRadius(5)
                }
            }
            .padding([.leading, .bottom, .top])
            
            // Project description heading
            Text("Project Description:")
                .font(.headline)
                .foregroundColor(.black)
                .padding([.leading, .top])
                .background(Color("PostBox"))
            
            // Project description content
            Text("""
                The "University Hoodie Design" project, in collaboration with Cambridge University, focuses on creating a stylish and comfortable hoodie that represents the prestigious institution. Currently, we are in the phase of choosing color sets for the hoodie. We value your feedback and would like to know which color you would prefer for your Cambridge University hoodie. Your input will help us finalize a design that resonates with the university community and ensures everyone can proudly wear their chosen colors.
                """)
                .font(.body)
                .foregroundColor(.black)
                .padding(.horizontal)
                .background(Color("PostBox"))
                .cornerRadius(10)
                .padding(.bottom)
            
            Spacer()
            
            // Bottom navigation bar with buttons
            HStack {
                Spacer()
                Button(action: {
                    // Chat button action
                    print("Chat button tapped")
                }) {
                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {
                    // Home button action
                    print("Home button tapped")
                }) {
                    Image(systemName: "house.fill")
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
        .background(Color("PostBackground").edgesIgnoringSafeArea(.all))
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .previewDevice("iPhone 15 Pro")
            .previewDisplayName("Default")
        

    }
}

