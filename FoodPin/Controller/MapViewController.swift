import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    //MARK: Properties
    
    @IBOutlet var mapView: MKMapView!
    
    var restaurant = Restaurant()

    //MARK: Delegate Methods
    
    // this method is called every time when  map view need to display annotation
    // without this method default annotation is displayed
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let indetifier = "MyMarker"
        if annotation.isKind(of: MKUserLocation.self) {
            return nil
        }
        
        // reuse the annotation if possible
        var annotationView: MKMarkerAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: indetifier) as? MKMarkerAnnotationView
        
        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: indetifier)
        }
        
        annotationView?.glyphText = "ok"
        annotationView?.markerTintColor = UIColor.orange
        
        return annotationView
        
    }
    
    //MARK: View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
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
                    // changing the state of annotation that makes it bigger
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        }
    }
}
