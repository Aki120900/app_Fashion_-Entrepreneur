import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var coordinator: Coordinator

    var body: some View {
        VStack {
            Spacer()
            
            // App title
            Text("Fashion Entrepreneurs")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.bottom, 20)
            
            // Welcome message to all users
            Text("Welcome!")
                .font(.title)
                .foregroundColor(Color("CustomBlue"))
                .padding(.bottom, 40)
            
            VStack(alignment: .leading) {
                // Log in section
                Text("LOG IN")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                
                // Email section
                TextField("Email:", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                
                // Password
                SecureField("Password:", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
            }
            .padding(.horizontal, 30)
            
            Button(action: {
                // Add login logic here
                coordinator.navigateToHome()
            }) {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color("CustomBlue"))
                    .cornerRadius(25.0)
            }
            .padding(.bottom, 20)
            
            Button(action: {
                // Forgot password
            }) {
                Text("Forgot password")
                    .font(.subheadline)
                    .foregroundColor(Color("CustomBlue"))
            }
            .padding(.bottom, 40)
            
            Spacer()
            
            Button(action: {
                // Sign up
            }) {
                Text("Sign Up")
                    .font(.subheadline)
                    .foregroundColor(Color("CustomBlue"))
                    .padding()
            }
        }
        .padding()
        .background(Color("CustomBackground"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(Coordinator())
            .previewDevice("iPhone 15 Pro")
    }
}
