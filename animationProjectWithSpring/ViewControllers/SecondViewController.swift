import UIKit
import SpringAnimation

class SecondViewController: UIViewController {

    var animation: Animation!
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var labelsOfView: [UILabel]!
    
    @IBAction func animationButton(_ sender: SpringButton) {
        print(generateRandomAnimation())
        labelsOfView[0].text = "Preset: \(animation.current)"
        labelsOfView[1].text = "Curve: \(animation.curve)"
        labelsOfView[2].text = "Force: \(String(format: "%.1f", animation.force))"
        labelsOfView[3].text = "Durationg: \(String(format: "%.1f", animation.duration))"
        labelsOfView[4].text = "Delay: \(String(format: "%.1f", animation.delay))"
        
        animationView.animation = String(animation.current)
        animationView.curve = String(animation.curve)
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
    }
    func generateRandomAnimation() {
        animation = Animation()
        animation.randomAnimation()
    }
    
    @IBAction func backButton(_ sender: SpringButton) {
        dismiss(animated: true)
    }
    
}
