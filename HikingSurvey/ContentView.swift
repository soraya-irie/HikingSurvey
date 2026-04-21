import SwiftUI

struct ContentView: View {
    @State var responses: [Response] = []

    var body: some View {
        VStack {
            Text("Opinions on Hiking")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding(.top, 24)
        }
        .onAppear {

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
