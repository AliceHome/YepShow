//
//  UIStoryboard+Yep.swift
//  YepShow
//
//  Created by Rey on 2018/8/9.
//  Copyright © 2018 Rey. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static var yep_show: UIStoryboard {
        return UIStoryboard(name: "Show", bundle: nil)
    }
    
    static var yep_main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    struct Scene {
        
        
        static var registerPickName: RegisterPickNameViewController {
            
            return UIStoryboard(name: "Intro", bundle: nil).instantiateViewController(withIdentifier: "RegisterPickNameViewController") as! RegisterPickNameViewController
        }
    }
    
    
}
