import Foundation

struct Animation {
    var current: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    let animations: [String] = ["pop", "fall", "flash"]
    let curves: [String] = ["easeIn", "easeOut", "easeInOut"]
    
    init(
        current: String = "",
        curve: String = "",
        force: Double = 0.0,
        duration: Double = 0.0,
        delay: Double = 0.0
    ) {
        self.current = current
        self.curve = curve
        self.force = force
        self.duration = duration
        self.delay = delay
    }

    
    func randomAnimation() -> [Any] {
        guard let theAnimation = animations.randomElement() else { return [] }
        guard let theCurve = curves.randomElement() else { return [] }
        let theForce = Double.random(in: 0.0...1.0).formatted(.number.precision(.fractionLength(1)))
        let theDuration = Double.random(in: 0.0...1.0).formatted(.number.precision(.fractionLength(1)))
        let theDelay = Double.random(in: 0.0...1.0).formatted(.number.precision(.fractionLength(1)))

        return [theAnimation, theCurve, theForce, theDuration, theDelay]
    }
}
