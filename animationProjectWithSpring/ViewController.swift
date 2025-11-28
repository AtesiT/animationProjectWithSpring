import UIKit

final class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
    }
    
}

