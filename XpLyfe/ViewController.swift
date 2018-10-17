//
//  ViewController.swift
//  XpLyfe
//
//  Created by Patricio Vargas on 8/16/18.
//  Copyright © 2018 XpLyfe. All rights reserved.
/*

import UIKit
import AWSCognitoIdentityProvider

class ViewController: UIViewController, AWSCognitoIdentityProvider {

    
    //@IBOutlet weak var signInButton: UIBarButtonItem!
    //@IBOutlet weak var signOutButton: UIBarButtonItem!
    var auth: AWSCognitoAuth = AWSCognitoAuth.default()
    var session: AWSCognitoAuthUserSession?
    var firstLoad: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth.delegate = self;
        if(self.auth.authConfiguration.appClientId.contains("SETME")){
            self.alertWithTitle("Error", message: "Info.plist missing necessary config under AWS->CognitoUserPool->Default")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        /*if(self.firstLoad){
            self.signInTapped(loginButton)
        }*/
        self.firstLoad = false
    }
    
    func getViewController() -> UIViewController {
        return self;
    }

    func getBestToken() -> AWSCognitoAuthUserSessionToken? {
        if(self.session != nil){
            if((self.session?.idToken) != nil){
                return self.session?.idToken!
            }else if((self.session?.accessToken) != nil){
                return self.session?.accessToken!
            }
        }
        return nil;
    }
    
    func refresh () {
        DispatchQueue.main.async {
            //self.signInButton.isEnabled = self.session == nil
            //self.signOutButton.isEnabled = self.session != nil
            self.title = self.session?.username;
        }
    }
    
    func alertWithTitle(_ title:String, message:String?) -> Void {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { (UIAlertAction) in
                alert.dismiss(animated: false, completion: nil)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        print("holaaaaaa")
        self.auth.getSession  { (session:AWSCognitoAuthUserSession?, error:Error?) in
            if(error != nil) {
                self.session = nil
                self.alertWithTitle("Error", message: (error! as NSError).userInfo["error"] as? String)
            }else {
                self.session = session
            }
            self.refresh()
        }
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        self.auth.signOut { (error:Error?) in
            if(error != nil){
                self.alertWithTitle("Error", message: (error! as NSError).userInfo["error"] as? String)
            }else {
                self.session = nil
                self.alertWithTitle("Info", message: "Session completed successfully")
            }
            self.refresh()
        }
    }

}

//Property of elements
@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

*/
