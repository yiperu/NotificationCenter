//
//  ViewController.m
//  PryNotificacionObjc01
//
//  Created by Henry AT on 4/30/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cambiarFondoV1:) name:@"notiVerde" object:nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


-(void)cambiarFondoV1:(NSNotification *) notificacion{
  
  NSObject * obj = [notificacion object];
  if ([obj isKindOfClass:[NSDictionary class]]) {
    NSDictionary *myDic2 = (NSDictionary*)obj;
    NSLog(@"El dato recibido es: %@",[myDic2 objectForKey:@"key1"]);
  } else {
  
  }

  if ([[notificacion name] isEqualToString:@"notiVerde"]) {
  self.view.backgroundColor = [UIColor greenColor];
  }

}




- (IBAction)btnRojo:(id)sender {
  
  NSLog(@"===>>> Click");
  [[NSNotificationCenter defaultCenter] postNotificationName:@"notiRojo" object:self];
  
}




















@end
