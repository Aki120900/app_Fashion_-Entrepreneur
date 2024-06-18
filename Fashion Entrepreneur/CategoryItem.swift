import SwiftUI

struct CategoryItem: View {
    // Properties for image name and title
    var imageName: String
    var title: String

    var body: some View {
        VStack {
            // Title text with custom styling
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
                .padding([.leading, .trailing, .top])
            
            // Display image with resizing and padding
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding([.leading, .trailing, .bottom])
        }
        .background(Color("CategoryBackground")) // Background color for the item
        .cornerRadius(10) // Rounded corners for the item
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 5) // Shadow for depth effect
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // Preview
            CategoryItem(imageName: "pink_dress", title: "Sample Title")
                .previewLayout(.sizeThatFits)
                .padding()
                .background(Color.gray.opacity(0.2)) // Background to see the shadow better
            
            
        }
    }
}
