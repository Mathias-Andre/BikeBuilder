import Foundation

class BikeList {
    private let list_of_bike: [String: [String: String]] = ["Single Speed": [
                                    "Ribble Urban 725s": "https://www.ribblecycles.co.uk/ribble-urban-725s/",
                                    "Fuji Feather": "https://www.fujibikes.com/usa/bikes/pavement/urban/feather/feather",
                                    "Genesis Flyer": "https://www.genesisbikes.co.uk/genesis-flyer-vargn21250"
                                ], "Fixed Gear": [
                                    "Cordoba Fixed Gear Bike": "https://www.aventon.com/collections/complete-bikes-track-fixed-gear/products/aventon-cordoba-fixed-gear-bike",
                                    "Mataro Fixed Gear Bike": "https://www.aventon.com/collections/complete-bikes-track-fixed-gear/products/aventon-mataro-complete-bike",
                                    "TSUNAMI SNM100": "https://www.mrbicycles.com/product/tsunami-snm100-complete-bike-black/"
                                ], "Mountain Bike": [
                                    "Orbea Laufey H30": "https://www.orbea.com/sg-en/bicycles/mountain/laufey/cat/laufey-h30",
                                    "Commencal Meta HT AM Origin": "https://www.commencalusa.com/meta-ht-am-origin-sand-2021-c2x31920244",
                                    "Vitus Mythique 27 VR": "https://vitusbikes.com/products/mythique-27-vr-bike-deore-1x10"
                                ], "Road Bike": [
                                    "Domane AL 3 Disc": "https://www.trekbikes.com/us/en_US/bikes/road-bikes/performance-road-bikes/domane/domane-al/domane-al-3-disc/p/33082/",
                                    "Specialized Allez": "https://www.specialized.com/sg/en/allez/p/184447?color=302091-184447"]]
    
    func getSections() -> [String] {
        return Array(list_of_bike.keys)
    }
    
    func getSectionValue(_ key: String) -> [String: String] {
        let result = list_of_bike[key] ?? ["": ""]
        return result
    }
}
