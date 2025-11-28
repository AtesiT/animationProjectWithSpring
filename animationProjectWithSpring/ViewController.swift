import UIKit

final class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
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
    
}

