//
//  ViewController.swift
//  sampleScreenShot
//
//  Created by RST on 07/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let mainQueue = OperationQueue.main
        NotificationCenter.default.addObserver(forName: UIApplication.userDidTakeScreenshotNotification, object: nil, queue: mainQueue) { notification in
           
            let alert = UIAlertController(title: "Alert", message: "Your Acount will be banned", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                    case .default:
                    print("default")
                    
                    case .cancel:
                    print("cancel")
                    
                    case .destructive:
                    print("destructive")
                    
                @unknown default:
                    print("error")
                }
            }))
            self.present(alert, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }
}
