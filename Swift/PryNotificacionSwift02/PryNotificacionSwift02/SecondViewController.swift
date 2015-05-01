//
//  SecondViewController.swift
//  PryNotificacionSwift02
//
//  Created by Henry AT on 5/1/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  var contador01: NSInteger = 0
  var contador02: NSInteger = 0
  
  @IBOutlet weak var txtContador01: UITextField!
  @IBOutlet weak var txtContador02: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    contador01 = 0;
    contador02 = 0;
    
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "recibeNoti:", name: "Test01", object: nil)
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "recibeNoti:", name: "Test02", object: nil)
    
  }
  
  
  func recibeNoti(notification: NSNotification){
    
    if(notification.name == "Test01"){
      contador01++;
      txtContador01.text = "\(contador01)"
    } else {
      contador02++;
      txtContador02.text = "\(contador02)"
    }
  

    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

