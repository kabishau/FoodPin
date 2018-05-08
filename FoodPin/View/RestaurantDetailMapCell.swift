import UIKit
import MapKit

class RestaurantDetailMapCell: UITableViewCell {
    
    @IBOutlet var mapView: MKMapView!
    
    func configure(location: String) {
        // get location
        let geoCoder = CLGeocoder()
        print(location)
        
        // this method sends async request to geocoding server and returns
        // completionHandler is executed in the main thread
        geoCoder.geocodeAddressString(location) { (placemarks, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let placemarks = placemarks {
                // get first placemark
                let placemark = placemarks[0]
                
                // add annotation
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    
                    self.mapView.addAnnotation(annotation)
                    
                    // set the zoom level
                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                    
                    self.mapView.setRegion(region, animated: false)
                }
            }
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
