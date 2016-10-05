//
//  RNKeyboardViewController.swift
//
//  Created by Arjun Balaji on 10/5/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class RNKeyboardViewController: KeyboardViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        NSUserDefaults.standardUserDefaults().registerDefaults([
            kAutoCapitalization: false,
            kPeriodShortcut: true,
            kKeyboardClicks: false,
            kSmallLowercase: true
            ])
        
        self.keyboard = rnKeyboard()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


