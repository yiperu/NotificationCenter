//
//  SegundoVC.m
//  PryNotificacionObjc01
//
//  Created by Henry AT on 4/30/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "SegundoVC.h"

@interface SegundoVC ()

@end

@implementation SegundoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  // Implementamos el NotificaionCenter
  // Esto NO funciona (por averiguar :-))
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cambiarColorFondo) name:@"notiRojo" object:nil];
  
}

//-(void)cambiarColorFondo:(NSNotification *)note {
-(void)cambiarColorFondo {
  NSLog(@"===>>> Received Notification");
  self.view.backgroundColor = [UIColor redColor];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnVerde:(id)sender {
  
  NSDictionary *myDic = @{@"key1":@"Henry Ambicho"};
  [[NSNotificationCenter defaultCenter] postNotificationName:@"notiVerde" object:myDic];
  
  
}





















@end
