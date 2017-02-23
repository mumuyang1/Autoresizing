//
//  ViewController.swift
//  Autoresizing
//
//  Created by Yanzi Li on 2/23/17.
//  Copyright © 2017 Yanzi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var purpleView: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()
    let blueView = UIView(frame: CGRect(x:0, y:200, width: view.bounds.width, height:100))
    blueView.backgroundColor = UIColor.blue
    blueView.autoresizingMask = [.flexibleTopMargin, .flexibleWidth, .flexibleBottomMargin, .flexibleHeight]
    view.addSubview(blueView)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    // if view is added in storyboard then set autoresizing in sb
    // if view is added in code then set autoresizing in code
    // it's a bad practise that set autoresizing in code while view is added by storyoard
    purpleView.frame = CGRect(x:0, y:purpleView.frame.minY, width: view.bounds.width, height: purpleView.bounds.height )
    purpleView.autoresizingMask = [.flexibleTopMargin, .flexibleWidth, .flexibleBottomMargin, .flexibleHeight]
    
    print(purpleView.bounds.minY)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

