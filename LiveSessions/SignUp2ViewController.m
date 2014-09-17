//
//  SignUp2ViewController.m
//  CrowdViz
//
//  Created by Connor Young on 9/6/14.
//  Copyright (c) 2014 chon.kevin. All rights reserved.
//

#import "SignUp2ViewController.h"
#import "LSViewController.h"

@interface SignUp2ViewController ()

@end

@implementation SignUp2ViewController
@synthesize username, password, confirmPassword;

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"UserListSegue"]) {
        LSViewController *lsviewcontroller = segue.destinationViewController;
        
    }
}
*/

- (IBAction)SignUpSubmit:(id)sender {
    NSString *usernameInput = username.text;
    NSString *passwordInput = password.text;
    NSString *confirmPasswordInput = confirmPassword.text;
    
    if ([usernameInput length] == 0) {
        UIAlertView *theAlertUsername = [[UIAlertView alloc] initWithTitle:@"No username" message:@"Please provide us your username." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [theAlertUsername show];
    }
    
    else if ([passwordInput length] < 8) {
        UIAlertView *theAlertShortPassword = [[UIAlertView alloc] initWithTitle:@"No username" message:@"The provided password is must be at least 8 characters long." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [theAlertShortPassword show];
    }
    else if (passwordInput != confirmPasswordInput) {
        UIAlertView *theAlertPasswordsNoMatch = [[UIAlertView alloc] initWithTitle:@"Wrong passwords" message:@"Please re-enter your password." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [theAlertPasswordsNoMatch show];
    }
}
@end
