//
//  AutoNotifyFalseAbortScenario.swift
//  iOSTestApp
//
//  Created by Jamie Lynch on 13/05/2021.
//  Copyright © 2021 Bugsnag. All rights reserved.
//

import Foundation
import Bugsnag

/**
* Raises a SIGABRT with autoNotify set to false, which should be ignored by Bugsnag
*/
internal class AutoNotifyFalseAbortScenario: Scenario {

    override func startBugsnag() {
      self.config.autoTrackSessions = false
      super.startBugsnag()
    }

    override func run() {
        Bugsnag.client.autoNotify = false
        abort()
    }
}
