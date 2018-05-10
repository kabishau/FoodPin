import UIKit

class ReviewViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    @IBOutlet var rateButtons: [UIButton]!
    
    var restaurant = Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)

    }

}
