//  Copyright © 2016 test. All rights reserved.
//

import Quick
import Nimble
@testable import ExampleWeatherApp

class WeatherFetcherSpec: QuickSpec {
    override func spec() {
        it("returns cities.") {
            var cities: [City]?
            WeatherFetcher.fetch { cities = $0 }
            
            expect(cities).toEventuallyNot(beNil())
            expect(cities?.count).toEventually(equal(12))
            expect(cities?[0].id).toEventually(equal(6077243))
            expect(cities?[0].name).toEventually(equal("Montreal"))
            expect(cities?[0].weather).toEventually(equal("Clouds"))
        }
    }
}