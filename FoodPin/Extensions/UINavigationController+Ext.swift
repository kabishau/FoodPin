import UIKit

extension UINavigationController {
    
    // overriding this property to the topViewController
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
