import SwiftUI

struct ResponseView: View {
    var response: Response

    var body: some View {
        Text(response.text)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .background(RoundedRectangle(cornerRadius: 8)
                .fill(.white)
            )
        Image(systemName: response.sentiment.icon)
            .frame(width: 30, height: 30)
    }
}

#Preview {
    ResponseView(response: Response(text: "I enjoy hiking very much!", score: 1.0))
}
