import SwiftUI
import Charts

struct ChartView: View {
    var responses: [Response]

    var body: some View {
        Chart(responses) { response in
            SectorMark(angle: .value("Type", 1))
                .foregroundStyle(by: .value("sentiment", response.sentiment))
        }
        .chartForegroundStyleScale([
            Sentiment.positive : Sentiment.positive.sentimentColor,
            Sentiment.negative : Sentiment.negative.sentimentColor,
            Sentiment.moderate : Sentiment.moderate.sentimentColor
        ])
    }
}

#Preview {
    ContentView()
}
