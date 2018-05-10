import UIKit

class ReviewViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet var backgroundImageView: UIImageView!
    
    var restaurant = Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = UIImage(named: restaurant.image)

    }

}
