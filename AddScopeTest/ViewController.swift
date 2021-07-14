//
//  ViewController.swift
//  AddScopeTest
//
//  Created by Ivo Silva on 14.07.21.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        GIDSignIn.sharedInstance.signIn(
            with: GIDConfiguration(clientID: "REPLACE_WITH_YOUR_CLIENT_ID"),
            presenting: self
        ) { [weak self] user, error in
            
            guard let self = self else { return }
            
            if let error = error {
                print(">>> signIn error \(error)")
                return
            }
            
            print(">>> signIn callback \(user?.grantedScopes ?? [])")

            let scopes = ["https://www.googleapis.com/auth/calendar"]
                            
            GIDSignIn.sharedInstance.addScopes(
                scopes,
                presenting: self,
                callback: { user, error in
                    // This callback is never executed
                    print(">>> addScopes callback \(user?.grantedScopes ?? [])")
                }
            )
        }
    }
}

