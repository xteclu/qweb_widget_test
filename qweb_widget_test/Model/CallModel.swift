//
//  CallModel.swift
//  qweb_widget_test
//
//  Created by Amir Zhunussov on 21.04.2023.
//

import Foundation

enum CallState {
    case START, STOP
}

enum AppState {
    case START, STOP
    
    var stringValue: String {
            switch self {
            case .START:
                return "START"
            case .STOP:
                return "STOP"
            }
        }
}

enum AppEvent {
    case PIP_ENTER, PIP_EXIT
    
    var stringValue: String {
        switch self {
        case .PIP_ENTER:
            return "PIP_ENTER"
        case .PIP_EXIT:
            return "PIP_EXIT"
        }
    }
}

public struct Location {
  let latitude: Double
  let longitude: Double
  
  var json: [String: Any] {
    return [
      "latitude": latitude,
      "longitude": longitude
    ]
  }
  
  public init(latitude: Double, longitude: Double) {
    self.latitude = latitude
    self.longitude = longitude
  }
}

public enum CallType: String {
  case video, audio
}

public struct Call {
  let domain: String
  var type: CallType = .video
  let topic: String
  var location: Location? = nil
  var dynamicAttrs: [String: Any?] = [:]
  
  var json: [String: Any?] {
    var json = dynamicAttrs
    json["domain"] = domain
    json["type"] = type.rawValue
    json["topic"] = topic
    json["location"] = location?.json
    return json
  }
  
  public init(domain: String, type: CallType, topic: String, location: Location? = nil, dynamicAttrs: [String : Any?] = [:]) {
    self.domain = domain
    self.type = type
    self.topic = topic
    self.location = location
    self.dynamicAttrs = dynamicAttrs
  }
}
