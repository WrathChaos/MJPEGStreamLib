# MJPEGStreamLib
<p align="center">
<img  src="https://github.com/WrathChaos/MJPEGStreamLib/blob/master/Screenshots/logo.png">
</p>


<p align="center">
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/cocoapods/l/MJPEGStreamLib.svg"
alt="License">
</a>
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/cocoapods/p/MJPEGStreamLib.svg"
alt="platform">
</a>
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/badge/CocoaPods-compatible-4BC51D.svg"
alt="Cocoapods">
</a>
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/cocoapods/dt/MJPEGStreamLib.svg"
alt="Downloads">
</a>
</p>



<p align="center">
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="http://img.shields.io/travis/wrathchaos/MJPEGStreamLib.svg"
alt="Build">
</a>
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/github/issues/WrathChaos/MJPEGStreamLib.svg"
alt="Issues">
</a>
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/badge/Swift-4.0-orange.svg"
alt="Swift 4.0">
<img src="https://img.shields.io/badge/Swift-3.0-blue.svg"
alt="Swift 3.0">
</a>
<a href="https://github.com/WrathChaos/MJPEGStreamLib">
<img src="https://img.shields.io/cocoapods/v/MJPEGStreamLib.svg"
alt="Pod Version">
</a>
</p>



## Introduction
Simple and elegant MJPEG Stream library. It is based on UIImageView and customizeable for your design.
This is original a fork from [MjpegStreamingKit](https://github.com/freedom27/MjpegStreamingKit)

<p align="center">
<img width="300" height="600" src="https://github.com/WrathChaos/MJPEGStreamLib/blob/master/Screenshots/screenshot2.png">
</p>
<p align="center">
<img  src="https://github.com/WrathChaos/MJPEGStreamLib/blob/master/Screenshots/screenshot1.png">
</p>


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- iOS 8.0+
- XCode 8.1, 8.2, 8.3
- **XCode 9.0+**
- Swift 3.0, 3.1, 3.2
- **Swift 4.0+**


## Installation

MJPEGStreamLib is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MJPEGStreamLib"
```


<b>DO NOT FORGET TO ADD PERMISSION FOR EXTERNAL DATA NETWORK : </b>
<p align="center">
<img src="https://github.com/WrathChaos/MJPEGStreamLib/blob/master/Screenshots/screenshot3.png">
</p>




## Usage
```ruby
import MJPEGStreamLib
```

Once imported, you can open a connection to your WebSocket server. 

```ruby

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
        let url = URL(string: "http://webcam.st-malo.com/axis-cgi/mjpg/video.cgi?")
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

```


## Author

Kuray OGUN, kurayogun@gmai.com

## License

MJPEGStreamLib is available under the MIT license. See the LICENSE file for more info.

