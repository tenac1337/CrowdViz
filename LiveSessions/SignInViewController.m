//
//  SignInViewController.m
//  CrowdViz
//
//  Created by Connor Young on 9/6/14.
//  Copyright (c) 2014 chon.kevin. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController
@synthesize username, password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SignInSubmit:(id)sender {
    
    NSString *usernameInput = username.text;
    NSString *passwordInput = password.text;

    
    if ([usernameInput length] == 0) {
        UIAlertView *theAlertUsername = [[UIAlertView alloc] initWithTitle:@"No username" message:@"Please provide us your username." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [theAlertUsername show];
    }
    
    else if ([passwordInput length] == 0) {
        UIAlertView *theAlertPassword = [[UIAlertView alloc] initWithTitle:@"No password" message:@"Please provide your password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [theAlertPassword show];
    }
}

@end
