import SwiftUI

struct ContentView: View {
    @State var responses: [Response] = []
    var score = Scorer()

    func saveResponse(text: String) {
        let score = score.score(text)
        let response = Response(text: text, score: score)
    }

    var body: some View {
        VStack {
            Text("Opinions on Hiking")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding(.top, 24)
            ScrollView {
                ForEach(responses) { response in
                    ResponseView(response: response)
                }
            }
        }
        .onAppear {
            for response in Response.sampleResponses {
                saveResponse(text: response)
            }
        }
        .padding(.horizontal)
        .background(Color(white: 0.94))
    }
}

#Preview {
    ContentView()
}
