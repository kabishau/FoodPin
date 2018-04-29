import UIKit

class RestaurantDetailViewController: UIViewController {
    
    //MARK: Properties
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // makes navigation bar narrow
        navigationItem.largeTitleDisplayMode = .never

    }

}
