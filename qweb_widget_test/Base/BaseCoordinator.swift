
import UIKit

enum CoordinatableModule {
  case launch
//    , wv
  
  var vc: BaseViewController.Type {
    switch self {
    case .launch: return StartUpViewController.self
//    case .wv: return WVViewController.self
    }
  }
}

class BaseViewController: UIViewController {
  var nav: BaseCoordinator!
}


class BaseCoordinator {
  var navigationController: UINavigationController
  
  required init(_ navigationController: UINavigationController){
    self.navigationController = navigationController
  }
  
  public func start() {}
  
  public func coordinate(to module: CoordinatableModule, within navigationController: UINavigationController? = nil){
    let nav = BaseCoordinator(navigationController ?? self.navigationController)
    let viewController = module.vc.init()
    viewController.nav = nav
    nav.navigationController.pushViewController(viewController, animated: false)
  }
}

class AppCoordinator {
  var window: UIWindow
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    
    let navigationController = UINavigationController()
    window.rootViewController = navigationController
    window.makeKeyAndVisible()
    
    let nav = BaseCoordinator(navigationController)
    let viewController = StartUpViewController()
    viewController.nav = nav
    nav.navigationController.pushViewController(viewController, animated: false)
  }
}
