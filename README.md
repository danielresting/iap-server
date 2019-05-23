# iap-server

Building an open source IAP Server in Swift for iOS apps.

Each session will have continuous commits to the branch for that session so you can follow along. Code can be hard to read on the screen.

Watch live at https://twitch.tv/danielresting
Contribute live at https://github.com/danielresting
Twitter: https://twitter.com/danielresting

## Development

To generate the xcode project, run:

    cat ios-xcodegen-template.yml | sed  "s/\$IOS_DEVELOPMENT_TEAM/$IOS_DEVELOPMENT_TEAM/g" > project.yml && swift run mint run  Carthage/Carthage carthage bootstrap --cache-builds --platform iOS && swift run mint run yonaskolb/XcodeGen xcodegen && open IAPSampleApp.xcodeproj/