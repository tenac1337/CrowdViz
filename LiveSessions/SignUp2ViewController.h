//
//  SignUp2ViewController.h
//  CrowdViz
//
//  Created by Connor Young on 9/6/14.
//  Copyright (c) 2014 chon.kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUp2ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;

@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UITextField *confirmPassword;

- (IBAction)SignUpSubmit:(id)sender;

@end
