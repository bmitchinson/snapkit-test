# MLH Snap Login Kit Focus Group Starter Code

This is the starter code the Snap Login Kit SDK. Follow the instructions and implement the Login Kit to the best of your ability. Please provide detailed feedback to help improve the developer experience for future Snap Kit developers.

# App Registration

You need to register your app at the [Snap Kit developer portal](https://kit.snapchat.com/portal/) with the `bundleID` associated with your app.

App registration is an important part of the workflow. Login Kit requires both the `bundleID` and a `clientID`. At runtime, Snapchat will verify that the content to be shared is redirected from a legitimate app.

Two OAuth `clientIDs` will be automatically generated when you register an app on the Snap Kit developer portal. You will receive a Production clientID and a Development clientID.

For this focus group you will use the Development `clientID`

Install Snap Kit SDK via Cocoapods.

```
$ pod install
```
1. Open the project in Xcode.

```
$ open LoginKitSample.xcworkspace
```

2. Open Info.plist and modify the following attributes:

- `CFBundleURLTypes/CFBundleTypeRole - Set it to Editor1`
- `CFBundleURLTypes/CFBundleURLName - Set it to the app's bundleID ie. $(PRODUCT_BUNDLE_IDENTIFIER)`
- `CFBundleURLTypes/CFBundleURLSchemes - Set it to a unique string (without space) allow Snapchat to redirect to your app after`
- `SCSDKClientId - OAuth2 client ID you receive from registering your app`
- `SCSDKRedirectUrl - the URL that Snapchat will use to redirect users back to your after a successful authorization`
- `LSApplicationQueriesSchemes - Always set the value to snapchat`
- `SCSDKScopes - OAuth2 scopes. Set it one or all of the following scopes for the resources you wish to retrieved from the user profile:`
- `https://auth.snapchat.com/oauth2/api/user.display_name`
- `https://auth.snapchat.com/oauth2/api/user.external_id`
- `https://auth.snapchat.com/oauth2/api/user.bitmoji.avatar`

3. Save your project.

4. Build and run the demo app.

5. Implement Login Kit SDK via the [Snap Kit Documentation](https://docs.snapchat.com/docs/tutorials/login-kit/ios/)

6. Provide feedback on your experience
