import SwiftUI

struct ImageOverlay: View {
    var textLabel: String
    var body: some View {
        ZStack {
            Text("\(textLabel)")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }
        .background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct PreBuildList: View {
    @Environment(\.presentationMode) var presentationMode
    private var list = BikeList()
    var body: some View {
        ScrollView {
            ForEach(list.getSections(), id: \.self) { sectionKey in
                Section(header: Text(sectionKey)
                            .bold()
                            .font(.title2)
                            .padding(.top, 30)
                            .padding(.leading, 20)
                            .foregroundColor(.blue)
                            .frame(width: screenwidth, alignment: .leading)){
                    ForEach(list.getSectionValue(sectionKey).sorted(by: >), id: \.key) { valueKey, value in
                        Link(destination: URL(string: "\(value)")!) {
                            Image("\(valueKey)")
                                .resizable()
                                .scaledToFit()
                                .overlay(ImageOverlay(textLabel: "\(valueKey)"), alignment: .bottomTrailing)
                        }
                    }
                }
            }
        }
        .navigationTitle("List of pre build bikes")
    
    }
}
