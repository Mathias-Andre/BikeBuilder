import Foundation

class BikeParts {
    private var Fixed_Gear: [String: String] = ["Frame Set": "frame, fork, headset", "Wheel Set": "hubs, tires", "Crank Set": "", "Pedals": "", "Chain": "", "Stem": "", "Handlebar": "flat/ drop/ bullhorn", "seatpost": "", "Saddle": ""]
    private var Single_Speed: [String: String] = ["Frame Set": "frame, fork, headset", "Wheel Set": "hubs, tires", "Crank Set": "", "Pedals": "", "Chain": "", "Stem": "", "Handlebar": "flat/ drop/ bullhorn", "seatpost": "", "Saddle": "", "Front & Rear Break Levers": "", "Front & Rear Break Calipers": "", "Break Cables & Housing": ""]
    private var Road_Bike: [String: String] = ["Frame Set": "frame, fork, headset", "Wheel Set": "hubs, tires", "Derailleurs": "", "Cassette": "", "Crank Set": "", "Pedals": "", "Chain": "", "Front & Rear Break Set": "Calipers, Cables, Housing, Brake Pads", "Gear Cable Sets": "", "Break Levers with Shifters": "", "Handlebar": "flat/ drop/ bullhorn", "seatpost": "", "Saddle": ""]
    private var Mountain_Bike: [String: String] = ["Frame Set": "frame, fork, headset", "Front & Rear Wheel": "26/ 27.5/ 29 Inches", "Front & Rear Breaks": "", "Tyres & Tubes": "", "Stem": "", "Handlebars": "flat/ dropbars", "Grips": "", "Derailleurs": "", "Shifters": "", "Cassette": "", "Crank": "", "Chain": "", "Bottom Bracket": "", "Pedals": "", "Seatpost": "", "Saddle": ""]
    
    func getBike(_ type: String) -> [String: String] {
        if type == "fixed_gear" {
            return Fixed_Gear
        } else if type == "single_speed" {
            return Single_Speed
        } else if type == "road_bike" {
            return Road_Bike
        } else if type == "mountain_bike" {
            return Mountain_Bike
        }
        return ["": ""]
    }
}
