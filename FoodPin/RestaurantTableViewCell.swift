import UIKit

// it serves as a view model of the custom cell

class RestaurantTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    // making corners be rounded usin property observer which is called every time a property's value is set
    @IBOutlet weak var thumnailImageView: UIImageView! {
        didSet {
            thumnailImageView.layer.cornerRadius = thumnailImageView.bounds.width / 2
            thumnailImageView.clipsToBounds = true
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
