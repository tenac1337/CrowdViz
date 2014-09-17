//
//  SignInViewController.h
//  CrowdViz
//
//  Created by Connor Young on 9/6/14.
//  Copyright (c) 2014 chon.kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignInViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;

@property (weak, nonatomic) IBOutlet UITextField *password;



- (IBAction)SignInSubmit:(id)sender;

@end
