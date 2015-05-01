//
//  FirstViewController.m
//  PryNotificacionObjc02
//
//  Created by Henry AT on 4/30/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)btnContador01:(id)sender {
  [[NSNotificationCenter defaultCenter] postNotificationName:@"Test01" object:self];
  
}

- (IBAction)btnContador02:(id)sender {
  [[NSNotificationCenter defaultCenter] postNotificationName:@"Test02" object:self];
  
}






































@end