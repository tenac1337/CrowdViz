//
//  KHCViewController.m
//  CrowdViz
//
//  Created by Kevin Hojun Chon on 9/5/14.
//  Copyright (c) 2014 chon.kevin. All rights reserved.
//

#import "SignUpPageViewController.h"


@interface SignUpPageViewController()

@end

@implementation SignUpPageViewController
@synthesize firstName, lastName, emailAddress;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Continue:(id)sender {
        NSString *firstNameInput = firstName.text;
        NSString *lastNameInput = lastName.text;
        NSString *emailAddressInput = emailAddress.text;
    
    
        BOOL stricterFilter = NO;
        NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
        NSString *laxString = @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*";
        NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
        NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
        if ([firstNameInput length] == 0) {
            UIAlertView *theAlertFirstName = [[UIAlertView alloc] initWithTitle:@"No first name" message:@"Please provide your first name." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [theAlertFirstName show];
        }
        
        else if ([lastNameInput length] == 0) {
            UIAlertView *theAlertLastName = [[UIAlertView alloc] initWithTitle:@"No last name" message:@"Please provide your last name." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [theAlertLastName show];
        }

        else if ([emailTest evaluateWithObject:emailAddressInput] == NO) {
            UIAlertView *theAlertEmailAddressValidity = [[UIAlertView alloc] initWithTitle:@"Invalid Email" message:@"Please provide a correct email address." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [theAlertEmailAddressValidity show];
        }
}
@end
