import UIKit

class RestaurantDetailViewController: UIViewController {
    
    //MARK: Properties
    
    
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    var restaurantImageName = ""
    var restaurantName = ""
    var restaurantLocationName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restaurantImageView.image = UIImage(named: restaurantImageName)
        nameLabel.text = restaurantName
        locationLabel.text = restaurantLocationName
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
