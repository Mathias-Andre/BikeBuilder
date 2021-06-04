import SwiftUI
import Combine

struct ImageCarousel<Content: View>: View {
    
    private var numberOfImages: Int
    private var content: Content
    @State private var currentIndex: Int = 0
    @EnvironmentObject private var bikeType: Shared
    
    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }
    
    var body: some View {
        let drag = DragGesture()
            .onChanged {
                if $0.translation.width > 100 {
                    self.currentIndex = (self.currentIndex + 1) % (self.numberOfImages == 0 ? 1 : self.numberOfImages)
                    switch currentIndex {
                    case 1:
                        bikeType.bikeType = "Single Speed Bike"
                    case 2:
                        bikeType.bikeType = "Mountain Bike"
                    case 3:
                        bikeType.bikeType = "Road Bike"
                    default:
                        bikeType.bikeType = "Fixed Gear Bike"
                    }
                }
            }
            .onEnded {
                if $0.translation.width < -100 {
                    self.currentIndex = (self.currentIndex + 1) % (self.numberOfImages == 0 ? 1 : self.numberOfImages)
                    switch currentIndex {
                    case 1:
                        bikeType.bikeType = "Single Speed Bike"
                    case 2:
                        bikeType.bikeType = "Mountain Bike"
                    case 3:
                        bikeType.bikeType = "Road Bike"
                    default:
                        bikeType.bikeType = "Fixed Gear Bike"
                    }
                }
            }
        
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                HStack(spacing: 0) {
                    self.content
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
                .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
                .animation(.spring())
                .gesture(drag)
            }
        }
    }
}
