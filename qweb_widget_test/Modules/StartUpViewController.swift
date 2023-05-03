
import UIKit
import Foundation
import SafariServices
import WebKit
//import QboxWebWidget

class StartUpViewController: BaseViewController {
  
//  override func viewWillAppear(_ animated: Bool) {
//    widget
//  }
  //...
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    present(
      WebViewController(settings: Settings(
          url: "https://demo.qxix.dev/widget/video-call/nonresident-verification",
          language: .ru,
          call: Call(domain: "ios.test", type: .video, topic: "dev"
                    )
      )),
      animated: false
    )
  }
}
