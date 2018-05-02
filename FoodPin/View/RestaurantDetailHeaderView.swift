import UIKit

class RestaurantDetailHeaderView: UIView {

    //MARK: Properties
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel! {
        didSet {
            nameLabel.numberOfLines = 0
        }
    }
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var heartImageView: UIImageView!

}
