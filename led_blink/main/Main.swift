//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2023 Apple Inc. and the Swift project authors.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

@_cdecl("app_main")
func app_main() {
  print("Hello from Swift on ESP32-C6!")
  print("------------1")
  let n = 1
  print("------------2")
  let ledStrip = LedStrip(gpioPin: 8, maxLeds: n)
  print("------------3")
  ledStrip.clear()

  var colors: [LedStrip.Color] = .init(repeating: .off, count: n)
  while true {
    print("------------4")
    ledStrip.setPixel(index: 0, color: .lightWhite)
    print("------------5")
    ledStrip.refresh()
    
    let blinkDelayMs: UInt32 = 500
    print("------------6")
    vTaskDelay(blinkDelayMs / (1000 / UInt32(configTICK_RATE_HZ)))
    ledStrip.setPixel(index: 0, color: .red)
    ledStrip.refresh()
    vTaskDelay(blinkDelayMs / (1000 / UInt32(configTICK_RATE_HZ)))
  }
}
