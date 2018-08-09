//
//  File.swift
//  YepShow
//
//  Created by Rey on 2018/8/9.
//  Copyright © 2018 Rey. All rights reserved.
//

import UIKit

final class ShowViewController: UIViewController {
    
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var pageControl: UIPageControl!
    @IBOutlet private weak var registerButton: UIButton!
    @IBOutlet private weak var loginButton: EdgeBorderButton!
    
    private var isFirstAppear = true
    private var steps = [UIViewController()]
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        if isFirstAppear {
            scrollView.alpha = 0
            pageControl.alpha = 0
            registerButton.alpha = 0
            loginButton.alpha = 0
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if isFirstAppear {
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseInOut, animations: {
                [weak self] in
                self?.scrollView.alpha = 1
                self?.pageControl.alpha = 1
                self?.registerButton.alpha = 1
                self?.loginButton.alpha = 1
            }, completion: {_ in})
        }
        
        isFirstAppear = false
    }
    
    private func makeUI() {
        
        let stepA = stepGenius()
        let stepB = stepMatch()
        let stepC = stepMeet()
        
        
        steps = [stepA, stepB, stepC]
        
        pageControl.numberOfPages = steps.count
        pageControl.pageIndicatorTintColor = UIColor.yepBorderColor()
        pageControl.currentPageIndicatorTintColor = UIColor.yepTintColor()
        
        registerButton.setTitle(NSLocalizedString("Sign Up", comment: ""), for: .normal)
        loginButton.setTitle(NSLocalizedString("Login", comment: ""), for: .normal)
        
        registerButton.backgroundColor = UIColor.yepTintColor()
        loginButton.setTitleColor(UIColor.yepInputTextColor(), for: .normal)
        
        let viewsDictionary: [String: AnyObject] = [
            "view": view,
            "stepA": stepA.view,
            "stepB": stepB.view,
            "stepC": stepC.view
        ]
        
        let vConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[stepA(==view)]|", options: [], metrics: nil, views: viewsDictionary)
        
        NSLayoutConstraint.activate(vConstraints)
        
        let hConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[stepA(==view)][stepB(==view)][stepC(==view)]|", options: [.alignAllBottom, .alignAllTop], metrics: nil, views: viewsDictionary)
        
        NSLayoutConstraint.activate(hConstraints)
        
    }
    
    private func stepGenius() -> ShowStepGeniusViewController {
        let step = storyboard!.instantiateViewController(withIdentifier: "ShowStepGeniusViewController") as! ShowStepGeniusViewController
        
        step.view.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(step.view)
        
        addChildViewController(step)
        step.didMove(toParentViewController: self)
        
        return step
    }
    
    func stepMatch() -> ShowStepMatchViewController {
        let step = storyboard!.instantiateViewController(withIdentifier: "ShowStepMatchViewController") as! ShowStepMatchViewController
        step.view.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(step.view)
        
        addChildViewController(step)
        step.didMove(toParentViewController: self)
        
        return step
    }
    
    
    private func stepMeet() -> ShowStepMeetViewController {
        let step = storyboard!.instantiateViewController(withIdentifier: "ShowStepMeetViewController") as! ShowStepMeetViewController
        
        step.view.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(step.view)
        
        addChildViewController(step)
        step.didMove(toParentViewController: self)
        
        return step
    }
    
    // MARK: Actions
    
    @IBAction private func register(sender: UIButton) {
        print("register button clicked.")
    }

    @IBAction func login(_ sender: EdgeBorderButton) {
        print("login button clicked.")
    }
}


extension ShowViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
         let pageWith = scrollView.bounds.width
        let pageFraction = scrollView.contentOffset.x / pageWith
        
        let page = Int(pageFraction)
        
        pageControl.currentPage = page
    }
}
