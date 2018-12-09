//
//  ViewController.swift
//  AppScroll
//
//  Created by L Wira on 06/12/18.
//  Copyright © 2018 Elabram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let viewHeight: CGFloat = 0.0
        //view2.visiblity(gone: true, dimension: 0)
        // or viewHeight = yourViewHeight
    }

}

extension UIView {
    func visiblity(gone: Bool, dimension: CGFloat = 0.0, attribute: NSLayoutConstraint.Attribute = .height) -> Void {
        if let constraint = (self.constraints.filter{$0.firstAttribute == attribute}.first) {
            constraint.constant = gone ? 0.0 : dimension
            self.layoutIfNeeded()
            self.isHidden = gone
        }
    }
}

