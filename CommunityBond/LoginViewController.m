//
//  LoginViewController.m
//  CommunityBond
//
//  Created by esolz it on 04/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import "LoginViewController.h"
#import "SignupViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)mailSignup:(id)sender {
    
    SignupViewController *navTo = [self.storyboard instantiateViewControllerWithIdentifier:@"signup"];
    [self.navigationController pushViewController:navTo animated:YES];
    
}
@end
