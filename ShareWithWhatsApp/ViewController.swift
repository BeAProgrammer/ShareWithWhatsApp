//
//  ViewController.swift
//  ShareWithWhatsApp
//
//  Created by Mac on 07/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var documentIC:UIDocumentInteractionController!
    override func viewDidLoad() {
        super.viewDidLoad()
       shareImg()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
func shareImg()
{
    let urlWhats = "whatsapp://app"
    if let urlString = urlWhats.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) {
        if let whatsappURL = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(whatsappURL) {
                
                if let image = UIImage(named: "01") {
                    if let imageData = UIImageJPEGRepresentation(image, 1.0) {
                        let tempFile = NSURL(fileURLWithPath: NSHomeDirectory()).appendingPathComponent("Documents/whatsAppTmp.jpeg")
                        do {
                            try imageData.write(to: tempFile!, options: .atomic)
                            
                            self.documentIC = UIDocumentInteractionController(url: tempFile!)
                            self.documentIC.uti = "net.whatsapp.image"
                            self.documentIC.presentOpenInMenu(from: CGRect.zero, in: self.view, animated: true)
                        }
                        catch {
                            print(error)
                        }
                    }
                }
                
            } else {
                // Cannot open whatsapp
            }
        }
    }

    }
    func shareVdo()
    {
        let urlWhats = "whatsapp://app"
        if let urlString = urlWhats.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) {
            if let whatsappURL = URL(string: urlString) {
                if UIApplication.shared.canOpenURL(whatsappURL) {
                    
                    if let image = UIImage(named: "01") {
                        if let imageData = UIImageJPEGRepresentation(image, 1.0) {
                            let tempFile = NSURL(fileURLWithPath: NSHomeDirectory()).appendingPathComponent("Documents/whatsAppTmp.jpeg")
                            do {
                                try imageData.write(to: tempFile!, options: .atomic)
                                
                                self.documentIC = UIDocumentInteractionController(url: tempFile!)
                                self.documentIC.uti = "net.whatsapp.image"
                                self.documentIC.presentOpenInMenu(from: CGRect.zero, in: self.view, animated: true)
                            }
                            catch {
                                print(error)
                            }
                        }
                    }
                    
                } else {
                    // Cannot open whatsapp
                }
            }
        }
        
    }

}

