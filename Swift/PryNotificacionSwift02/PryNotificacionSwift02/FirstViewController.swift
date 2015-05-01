//
//  FirstViewController.swift
//  PryNotificacionSwift02
//
//  Created by Henry AT on 5/1/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

// = = = = = = = = = = = = = = = = = = = = = 
  
  @IBAction func btnContador01(sender: AnyObject) {
    NSNotificationCenter.defaultCenter().postNotificationName("Test01", object: nil)
  }
  
  
  @IBAction func btnContador02(sender: AnyObject) {
    NSNotificationCenter.defaultCenter().postNotificationName("Test02", object: nil)
    println("Hola")
  }
  
}

