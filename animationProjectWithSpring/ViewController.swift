import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var isAnimating = false
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [unowned self] in
                //  Поправить анимацию по оси X
                if !isAnimating {
                    coreAnimationView.frame.origin.x -= 40
                    isAnimating.toggle()
                }
            } //    Удаленный блок с тем, что делать после выполнения анимации (какой код выполнить)
    }
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        sender.animation = "pop"
        sender.duration = 1
        sender.animate()
        
        springAnimationView.animation = "squeeze"
        springAnimationView.force = 1
        springAnimationView.animate()
    }
    
}

