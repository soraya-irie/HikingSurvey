import SwiftUI

struct ResponseView: View {
    var response: Response

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ResponseView(response: Response(text: "I enjoy hiking very much!"))
}
