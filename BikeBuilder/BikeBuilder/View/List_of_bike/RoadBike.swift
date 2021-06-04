import SwiftUI

struct RoadBike: View {
    @State private var data = BikeParts().getBike("road_bike")
    var body: some View {
        ScrollView {
            HStack {
                Text("Important Components")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(width: screenwidth / 1.8, alignment: .leading)
                Spacer()
                Text("sub components")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(width: screenwidth / 4, alignment: .trailing)
            }
            ForEach(data.sorted(by: >), id: \.key) { key, value in
                HStack {
                    Text("\(key)")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: screenwidth / 1.8, alignment: .leading)
                    Spacer()
                    Text("\(value)")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .frame(width: screenwidth / 4, alignment: .center)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
            }
        }
    }
}
