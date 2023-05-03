//
//  UIPipVideoCall.swift
//  qweb_widget_test
//
//  Created by Amir Zhunussov on 03.05.2023.
//

import Foundation
import UIKit
import AVFoundation
import AVKit

@available(iOS 15.0, *)
class SampleBufferVideoCallView: UIView {
    override class var layerClass: AnyClass {
        AVSampleBufferDisplayLayer.self
    }
    var sampleBufferDisplayLayer: AVSampleBufferDisplayLayer {
        layer as! AVSampleBufferDisplayLayer
    }
    
    let pipVideoCallViewController = AVPictureInPictureVideoCallViewController()
}
