import SwiftUI

struct ChatView: View {
    @State private var messageText: String = ""
    @State private var messages: [(String, Bool)] = [
        ("Hi there! I'm interested in fashion entrepreneurship.", true),
        ("That's great! How can I help you?", false),
        ("I want to start my own fashion line. Any tips?", true),
        ("Start by identifying your target market and creating unique designs.", false),
        ("That sounds good. What about funding?", true),
        ("Look into grants, loans, and potential investors.", false)
    ]

    var body: some View {
        VStack {
            // ScrollView for displaying messages
            ScrollView {
                VStack(spacing: 10) {
                    // Loop through messages and display them
                    ForEach(messages, id: \.0) { message, isCurrentUser in
                        HStack {
                            if isCurrentUser {
                                Spacer()
                                Text(message)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .padding(.horizontal)
                            } else {
                                Text(message)
                                    .padding()
                                    .background(Color.gray.opacity(0.5))
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                    .padding(.horizontal)
                                Spacer()
                            }
                        }
                    }
                }
                .padding(.top)
            }
            
            // HStack for message input and send button
            HStack {
                TextField("Type a message", text: $messageText)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .onSubmit {
                        sendMessage()
                    }
                
                Button(action: sendMessage) {
                    Text("Send")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            
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
                    // Stay in Chat
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

    // Function to handle sending a message
    private func sendMessage() {
        if !messageText.isEmpty {
            messages.append((messageText, true))
            messageText = ""
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .previewDevice("iPhone 15 Pro")
            .previewDisplayName("Default")
        
    }
}
