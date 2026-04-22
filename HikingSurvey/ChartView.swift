import SwiftUI
import Charts

struct ChartView: View {
    var responses: [Response]

    var body: some View {
        Chart(responses) { response in
            SectorMark(angle: .value("Type", 1))
        }
    }
}

#Preview {
    ContentView()
}
