//
//  ShowStepMatchViewController.swift
//  YepShow
//
//  Created by Rey on 2018/8/9.
//  Copyright © 2018 Rey. All rights reserved.
//

import UIKit

class ShowStepMatchViewController: ShowStepViewController {

    @IBOutlet private weak var camera: UIImageView!
    @IBOutlet private weak var pen: UIImageView!
    @IBOutlet private weak var book: UIImageView!
    @IBOutlet private weak var controller: UIImageView!
    @IBOutlet private weak var keyboard: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = NSLocalizedString("Match", comment: "")
        subTitleLabel.text = NSLocalizedString("Match friends with your skills", comment: "")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animate(view: camera, offset: 10, duration: 4)
        animate(view: pen, offset: 5, duration: 5);
        animate(view: book, offset: 10, duration: 3)
        animate(view: controller, offset: 15, duration: 2)
        animate(view: keyboard, offset: 20, duration: 4)
    }

 

}
