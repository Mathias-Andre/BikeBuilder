import SwiftUI

public var screenwidth = UIScreen.main.bounds.size.width
public var screenheight = UIScreen.main.bounds.size.height

struct ContentView: View {
    @State private var display = false
    @State private var displayPreBuild = false
    
    @StateObject var shared = Shared()
    var body: some View {
        NavigationView {
            VStack {
                Text("Bike Builder")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                Text("\(shared.bikeType)")
                    .font(.title3)
                GeometryReader { geometry in
                    ImageCarousel(numberOfImages: 4) {
                        Image("fixed-gear")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image("single-speed")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image("mountain-bike")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image("road-bike")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                    }
                }.frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
                if (display) {
                    Button(action: {
                        display.toggle()
                    }, label: {
                        Text("Back")
                    })
                    if (shared.bikeType == "Mountain Bike") {
                        MountainBike()
                    } else if (shared.bikeType == "Road Bike") {
                        RoadBike()
                    } else if (shared.bikeType == "Single Speed Bike"){
                        SingleSpeed()
                    } else if (shared.bikeType == "Fixed Gear Bike") {
                        FixedGear()
                    }
                } else {
                    Button(action: {
                        display.toggle()
                    }, label: {
                        Text("Start Building")
                            .font(.title)
                    })
                    .padding(.bottom, 20)
                    
                    Text("or")
                        .font(.title2)
                    
                    NavigationLink(
                        destination: PreBuildList(),
                        label: {
                            Text("Choose a pre build instead")
                                .font(.title)
                        })
                        .padding(.top, 20)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environmentObject(shared)
    }
}
