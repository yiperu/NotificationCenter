//
//  SecondViewController.h
//  PryNotificacionObjc02
//
//  Created by Henry AT on 4/30/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property NSInteger contador01;
@property NSInteger contador02;

@property (weak, nonatomic) IBOutlet UITextField *txtContador01;
@property (weak, nonatomic) IBOutlet UITextField *txtContador02;



@end

