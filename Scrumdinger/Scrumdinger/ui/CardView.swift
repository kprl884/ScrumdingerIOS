import SwiftUI

struct CardView: View {
    let scrum : DailyScrum
    var body : some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack{
                HStack {
                    Label("\(scrum.attendees.count)", systemImage: "person.3" )
                        .accessibilityAddTraits(.isHeader)
                    Spacer()
                    Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                        .padding(.trailing, 20)
                        .accessibilityLabel("Remaining time")
                        .accessibilityValue("\(scrum.lengthInMinutes)")
                }
            }.font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct  CardView_Previews: PreviewProvider{
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View{
        CardView(scrum: scrum)
            .background(.yellow)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
