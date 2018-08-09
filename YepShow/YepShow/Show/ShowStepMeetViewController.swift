//
//  ShowStepMeetViewController.swift
//  YepShow
//
//  Created by Rey on 2018/8/9.
//  Copyright © 2018 Rey. All rights reserved.
//

import UIKit

class ShowStepMeetViewController: ShowStepViewController {
    
    @IBOutlet private weak var yellowTriangle: UIImageView!
    @IBOutlet private weak var greenTriangle: UIImageView!
    @IBOutlet private weak var purpleTriangle: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = NSLocalizedString("Meet", comment: "")
        subTitleLabel.text = String.trans_subtitleBuildWorldTogether
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animate(view: yellowTriangle, offset: 3, duration: 3)
        animate(view: greenTriangle, offset: 7, duration: 2)
        animate(view: purpleTriangle, offset: 5, duration: 2)
        
    }
}
