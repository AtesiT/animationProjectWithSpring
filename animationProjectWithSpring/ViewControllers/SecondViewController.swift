import UIKit
import SpringAnimation

class SecondViewController: UIViewController {

    var animation: Animation!
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var labelsOfView: [UILabel]!
    
    @IBAction func animationButton(_ sender: SpringButton) {
        print(generateRandomAnimation())
        labelsOfView[0].text = "\(animation.current)"
        labelsOfView[1].text = "\(animation.curve)"
        labelsOfView[2].text = String(format: "%.1f", animation.force)
        labelsOfView[3].text = String(format: "%.1f", animation.duration)
        labelsOfView[4].text = String(format: "%.1f", animation.delay)
        
        animationView.animation = String(animation.current)
        animationView.curve = String(animation.curve)
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
    }
    func generateRandomAnimation() -> [Any] {
        animation = Animation()
        return animation.randomAnimation()
    }
    
    @IBAction func backButton(_ sender: SpringButton) {
        dismiss(animated: true)
    }
    
}
