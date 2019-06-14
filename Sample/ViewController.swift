//
//  ViewController.swift
//  Sample
//
//  Created by wade.hawk on 14/06/2019.
//  Copyright © 2019 wade.hawk. All rights reserved.
//

import UIKit
import TLPhotoPicker

class ViewController: UIViewController, TLPhotosPickerViewControllerDelegate {

    @IBAction func buttonTap(sender: UIButton) {
        let navVC = self.navigationController
        let viewController = TLPhotosPickerViewController()
        viewController.delegate = self
        var configure = TLPhotosPickerConfigure()
        configure.allowedVideo = false
        configure.allowedVideoRecording = false
        configure.maxSelectedAssets = 9
        viewController.configure = configure
        navVC?.present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

