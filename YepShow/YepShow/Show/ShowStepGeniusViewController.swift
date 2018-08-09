//
//  ShowStepGeniusViewController
//  YepShow
//
//  Created by Rey on 2018/8/9.
//  Copyright © 2018 Rey. All rights reserved.
//

import UIKit

class ShowStepGeniusViewController: ShowStepViewController {
    
    
    @IBOutlet private weak var rightPurpleDot: UIImageView!
    @IBOutlet private weak var leftGreenDot: UIImageView!
    @IBOutlet private weak var leftBlueDot: UIImageView!
    @IBOutlet private weak var leftRedDot: UIImageView!
    @IBOutlet private weak var leftPurpleDot: UIImageView!
    @IBOutlet private weak var topRedDot: UIImageView!
    @IBOutlet private weak var rightBlueDot: UIImageView!
    @IBOutlet private weak var centerBlueDot: UIImageView!
    @IBOutlet private weak var centerOrangeDot: UIImageView!
    @IBOutlet private weak var rightYellowDot: UIImageView!
    @IBOutlet private weak var rightGreenDot: UIImageView!
    
    @IBOutlet private weak var dotsLink: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = NSLocalizedString("Genius", comment: "")
        subTitleLabel.text = NSLocalizedString("Discover them around you", comment: "")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        repeatAnimate(view: rightPurpleDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(rightPurpleDot.frame)(dx: 2, dy: 2)), duration: 4)
        
        repeatAnimate(view: leftGreenDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(leftGreenDot.frame)(dx: 5, dy: 5)), duration: 2.5)
        
        repeatAnimate(view: leftBlueDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(leftBlueDot.frame)(dx: 3, dy: 3)), duration: 4)
        
        repeatAnimate(view: leftRedDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(leftRedDot.frame)(dx: 3, dy: 3)), duration: 1.5)
        
        repeatAnimate(view: leftPurpleDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(leftPurpleDot.frame)(dx: 1, dy: 1)), duration: 6)
        
        repeatAnimate(view: topRedDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(topRedDot.frame)(dx: 1, dy: 1)), duration: 2)
        
        repeatAnimate(view: rightBlueDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(rightBlueDot.frame)(dx: 1, dy: 1)), duration: 3)
        
        repeatAnimate(view: centerBlueDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(centerBlueDot.frame)(dx: 1, dy: 1)), duration: 3)
        
        repeatAnimate(view: centerOrangeDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(centerOrangeDot.frame)(dx: 1, dy: 1)), duration: 2)
        
        repeatAnimate(view: rightYellowDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(rightYellowDot.frame)(dx: 1, dy: 1)), duration: 3)
        
        repeatAnimate(view: rightGreenDot, alongWithPath: UIBezierPath(ovalIn: CGRect.insetBy(rightGreenDot.frame)(dx: 1, dy: 1)), duration: 3)
        
        let dotsLinkPath = UIBezierPath(arcCenter: dotsLink.center, radius: 5, startAngle: 0, endAngle: 2, clockwise: false)
        
        repeatAnimate(view: dotsLink, alongWithPath: dotsLinkPath, duration: 7, autoreverses: true)
        
    }
}


