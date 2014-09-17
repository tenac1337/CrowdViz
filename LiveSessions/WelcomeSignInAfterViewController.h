//
//  WelcomeSignInAfterViewController.h
//  CrowdViz
//
//  Created by Kevin Hojun Chon on 9/7/14.
//  Copyright (c) 2014 IPhoneGameZone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSAppDelegate.h"

@interface WelcomeSignInAfterViewController : UIViewController
{
    LSAppDelegate *appDelegate;
}
@property (strong, nonatomic) IBOutlet UILabel *crowdVizUserLabel;


@end
