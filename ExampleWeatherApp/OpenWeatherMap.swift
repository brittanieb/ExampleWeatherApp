//  Copyright © 2016 test. All rights reserved.
//

struct OpenWeatherMap {
    private static let apiKey = "35b7ff789250c361000965d1d7da14ab"
    
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