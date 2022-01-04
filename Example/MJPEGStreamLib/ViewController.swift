//
//  ViewController.swift
//  MJPEGStreamLib_Example
//
//  Created by Kuray aka FreakyCoder on 5.12.2017.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import MJPEGStreamLib

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    var stream: MJPEGStreamLib!
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the ImageView to the stream object
        stream = MJPEGStreamLib(imageView: imageView)
        // Start Loading Indicator
        stream.didStartLoading = { [unowned self] in
            self.loadingIndicator.startAnimating()
        }
        // Stop Loading Indicator
        stream.didFinishLoading = { [unowned self] in
            self.loadingIndicator.stopAnimating()
        }
        
        // Your stream url should be here !
        let url = URL(string: "http://ip-thomasmarina.greatlakescam.com/user/cgi-bin/getstream.cgi?10&&&&0&0&0&0&0")
        stream.contentURL = url
        stream.play() // Play the stream
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Make the Status Bar Light/Dark Content for this View
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
    }
}
