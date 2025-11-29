import UIKit
import SpringAnimation

class SecondViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var labelsOfView: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func animationButton(_ sender: SpringButton) {
    }
    @IBAction func backButton(_ sender: SpringButton) {
        dismiss(animated: true)
    }
    
}
