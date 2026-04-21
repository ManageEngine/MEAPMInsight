# MEAPMInsight

MEAPMInsight lets you track the performance of your iOS mobile application on actual end-user devices.

## Integrate MEAPMInsight using Swift Package Manager

1. Open your project in Xcode
2. Select File → Add Packages… from the menu bar
3. Enter the package repository URL:
   `https://github.com/ManageEngine/MEAPMInsight`
4. Set the Dependency Rule to **Up to Next Major Version**
5. Select target and **Add Package**

## Configure MEAPMInsight

After adding MEAPMInsight using Swift Package Manager, complete the following configuration steps.

### 1. Create a Mobile App Monitor

Create a mobile app monitor in the MangeEngine Applications Manager.
Download the generated configuration file:
`apm_config.plist`

### 2. Add apm_config.plist to your Xcode project

- Drag `apm_config.plist` into the root of your Xcode project
- In the dialog:
  - Set **Action** to **Copy files to destination**
  - Select the required **application target**
  - Click **Finish**

### 3. Initialize the SDK in AppDelegate

Initialize the SDK in your AppDelegate class to start monitoring:

```swift
import MEAPMInsight

@main
class AppDelegate: UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        #if DEBUG
        APMInsight.setDebugLoggingEnabled(true)
        APMInsight.setEnvironment("debug")
        #endif
        APMInsight.startMonitoring()
        // Below are Optional
        APMInsight.enableErrorReporting()
        // Pass array of URLs to ignore from HTTP tracking
        APMInsight.enableHttpTracking([
            "https://api.example.com/analytics",
            "https://cdn.example.com"
        ])

        return true
    }
}
```

> [!IMPORTANT]
> To ensure crash reports are properly symbolicated, set **Debug Information Format** to **DWARF with dSYM file** in the Build Settings. Make sure this setting is applied to your release builds before distributing/shipping your app.
