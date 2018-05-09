import MapKit

class MapViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet var mapView: MKMapView!
    
    var restaurant = Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // converting address to coordinate and annotate it on map
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location) { (placemarks, error) in
            if let error = error {
                print(error)
                return
            }
            
            if let placemarks = placemarks {
                // getting the first placemark
                let placemark = placemarks[0]
                
                // adding annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type
                
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    
                    // displaying the annotation
                    // using this method allows not to use "region" methods like in map view cell
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        }
    }
}
