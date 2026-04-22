import SwiftUI

struct ResponseView: View {
    var response: Response

    var body: some View {
        Text(response.text)
    }
}

#Preview {
    ResponseView(response: Response(text: "I enjoy hiking very much!"))
}
