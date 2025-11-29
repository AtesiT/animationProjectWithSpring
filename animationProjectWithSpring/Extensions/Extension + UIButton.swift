import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.9
        pulse.toValue = 1.0
        pulse.autoreverses = true // Разрешение на повторение анимации
        pulse.repeatCount = 2 // Повторяем анимацию три раза
        pulse.duration = 0.5 // Скорость одного прохода
        pulse.initialVelocity = 0.5 // Изначальная скорость
        pulse.damping = 0.7 // "Пружинистость". Чем меньше, тем более эластичнее пружина. Чем больше, тем жёстче.
        
        layer.add(pulse, forKey: nil)
    }
}
