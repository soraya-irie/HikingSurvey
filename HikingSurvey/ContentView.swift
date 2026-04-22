import SwiftUI

struct ContentView: View {
    @State var responses: [Response] = []
    @State private var responseText = ""
    var score = Scorer()

    func saveResponse(text: String) {
        let score = score.score(text)
        let response = Response(text: text, score: score)
        responses.insert(response, at: 0)
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
            HStack {
                TextField("What do you think abount hiking?", text: $responseText, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(5)
                Button("Done") {
                    guard !responseText.isEmpty else { return }
                    saveResponse(text: responseText)
                    responseText = ""
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
