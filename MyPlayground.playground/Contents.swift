import UIKit

enum LightBulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
            
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        
        case .off:
            self = .on
        }
    }
    
    
}

var bulb = LightBulb.on
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum shapeDimension {
    // square's associated blaue is teh length of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case let .square(side: side):
            return side * side
        
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = shapeDimension.square(side: 10.0)
var rectShape = shapeDimension.rectangle(width: 5.0, height: 10.0)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
