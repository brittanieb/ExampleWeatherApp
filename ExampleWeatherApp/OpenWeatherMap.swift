//  Copyright © 2016 test. All rights reserved.
//

struct OpenWeatherMap {
    private static let apiKey = "79a552d1d5657cf2ed1bfd02b8a46780"
    
    private static let cityIds = [
        6077243, 524901, 5368361, 1835848, 3128760, 4180439,
        2147714, 264371, 1816670, 2643743, 3451190, 1850147
    ]
    
    static let url = "http://api.openweathermap.org/data/2.5/group"
    
    static var parameters: [String: String] {
        return [
            "APPID": apiKey,
            "id": cityIds.map { String($0) }.joinWithSeparator(",")
        ]
    }
}