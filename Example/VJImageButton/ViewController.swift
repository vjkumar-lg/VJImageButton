//
//  ViewController.swift
//  VJImageButton
//
//  Created by vjkumar-lg on 05/25/2022.
//  Copyright (c) 2022 vjkumar-lg. All rights reserved.
//

import VJImageButton

import UIKit

@available(iOS 14.0, *)
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let icontextButton = IconTextButton(frame:CGRect(x: (view.frame.size.width-220)/2, y: (view.frame.size.height-60)/2, width: 220, height: 60), primaryAction: UIAction(title: "Refresh") { (action) in
            print("Refresh the data.")})
        icontextButton.configure(with:IconTextButtonViewModel(text: "Welcome", icon: UIImage(systemName: "airplane"), backgroundColor: .systemBlue))
        view.addSubview(icontextButton)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

