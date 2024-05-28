import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        logoImageView.isHidden = false
        webView.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.loadWebsite()
        }
    }
    
    func loadWebsite() {

        if let url = URL(string: "https://ahertel.de") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        webView.isHidden = false
        logoImageView.isHidden = true
    }
}
