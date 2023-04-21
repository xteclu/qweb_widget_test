
import UIKit
import Foundation
import SafariServices
import WebKit
import QboxWebWidget

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
          url: "https://kenes.1414.kz/widget/video-call",
          language: .ru,
          call: Call(domain: "ios.kaspi.kz", type: .video, topic: "videotson",
                     dynamicAttrs: ["service_code": "G-07"]
                    )
      )),
      animated: false
    )
  }
}
