//
//  SampleHandler.swift
//  screen-share-demo
//
//  Created by Divya Aggarwal on 03/03/22.
//

import ReplayKit
import TeachmintSdk

class SampleHandler: RPBroadcastSampleHandler {
    let builder = screenShareBuilder(suiteName: "group.teachmint.ios.app.appgroup")
    var lastVideoTimestamp : CMTime = CMTime()
    
    override func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?) {
        builder.startShare()
    }
    
    override func broadcastPaused() {}
    
    override func broadcastFinished() { builder.stopShare() }
    
    override func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType) {
            builder.processBuffer(sampleBuffer, with: sampleBufferType)
    }
}
