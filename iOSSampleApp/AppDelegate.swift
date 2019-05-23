import UIKit

@UIApplicationMain
class ApplicateDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        self.window = WindowWireframe().createWindow()
        return true
    }
}
