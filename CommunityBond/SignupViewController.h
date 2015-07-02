//
//  SignupViewController.h
//  CommunityBond
//
//  Created by esolz it on 04/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *signupScroll;
- (IBAction)checkbox:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *checkBtn;
- (IBAction)signupBtn:(id)sender;

@end
