This repo demonstrates the behaviour described in https://github.com/google/GoogleSignIn-iOS/issues/24

To test it please follow these steps:

1. Add your `GoogleService-Info.plist` to the project
2. In `ViewController.swift`, add your `clientID` in line 18
3. Add the `REVERSED_CLIENT_ID` to your target's URL Schemes (Project > Targets > AddScopeTests > Info tab > URL Types) 
