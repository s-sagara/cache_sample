//
//  ViewController.swift
//  cache_sample
//
//  Created by nttr on 2017/09/13.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    var url="http://dev.classmethod.jp/smartphone/iphone/ios-ats-cheats-info-plist-settings/"
    var url2 = "http://shiba710.blog34.fc2.com/blog-entry-538.html"
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let request=URL(string: url)
        let requestURL=URLRequest(url: request! as URL)
        webview.loadRequest(requestURL as URLRequest)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func button() {
        if i%2==0{
            let request=URL(string: url2)
            let requestURL=URLRequest(url: request! as URL)
            webview.loadRequest(requestURL as URLRequest)
        } else {
            let request=URL(string: url)
            let requestURL=URLRequest(url: request! as URL)
            webview.loadRequest(requestURL as URLRequest)
        
        }
        i += 1
    }
}

