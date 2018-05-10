import UIKit

class ReviewViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    @IBOutlet var rateButtons: [UIButton]!
    
    var restaurant = Restaurant()
    
    //MARK: View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // applying animation to the view
        
        // make the buttons invisible
        for rateButton in rateButtons {
            rateButton.alpha = 0
        }
    }
    
    // viewWillAppear is more suitable to render animation
    override func viewWillAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 2.0) {
            for rateButton in self.rateButtons {
                rateButton.alpha = 1.0
            }
        }
    }
}
