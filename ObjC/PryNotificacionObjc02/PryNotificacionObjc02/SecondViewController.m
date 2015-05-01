//
//  SecondViewController.m
//  PryNotificacionObjc02
//
//  Created by Henry AT on 4/30/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  _contador01 = 0;
  _contador02 = 0;
  
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recibeNoti:) name:@"Test01" object:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recibeNoti:) name:@"Test02" object:nil];
}



-(void) recibeNoti:(NSNotification *)notificacion{
  if ([[notificacion name] isEqualToString:@"Test01"]) {
    _contador01++;
    self.txtContador01.text = [NSString stringWithFormat: @"%ld", (long)_contador01];
  } else {
    _contador02++;
    self.txtContador02.text = [NSString stringWithFormat: @"%ld", (long)_contador02];
  }
}



- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}




































@end
