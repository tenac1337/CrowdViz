//
//  KHCViewController.h
//  CrowdViz
//
//  Created by Kevin Hojun Chon on 9/5/14.
//  Copyright (c) 2014 chon.kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpPageViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstName;

@property (weak, nonatomic) IBOutlet UITextField *lastName;

@property (weak, nonatomic) IBOutlet UITextField *emailAddress;

- (IBAction)Continue:(id)sender;



@end
