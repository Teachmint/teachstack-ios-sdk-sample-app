//
//  SdkView.swift
//  ios-sdk-demo-app
//
//  Created by Divya Aggarwal on 03/03/22.
//

import Foundation
import TeachmintSdk
import SwiftUI

struct SdkView: View, TeachmintRoomViewDelegate{
    @Environment(\.presentationMode) var presentationMode
    var url:String
    
    init( url:String) {
        self.url = url
    }
    
    var body:some View{
        EvaasMeetingSwiftview(delegate: self, suiteName: "group.teachmint.ios.app.appgroup",url:self.url, language: "en")
    }
    
    func onMeetingEnded(reason: String, recording:Bool,study_material:Bool,session_id:String?) {
        DispatchQueue.main.async {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func trackEvent(eventName: String, eventData: [String: String]){
    }
}
