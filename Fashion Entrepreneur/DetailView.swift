import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Image(systemName: "hoodie")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()

            Text("Hoodie")
                .font(.largeTitle)
                .padding()

            Text("This is a hoodie description.")
                .padding()

            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
