//
//  SignupViewController.m
//  CommunityBond
//
//  Created by esolz it on 04/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import "SignupViewController.h"
#import "MyChannelListViewController.h"

@interface SignupViewController (){
    
     NSString *checkboxSelected;
    
}

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    checkboxSelected = @"yes";
    
    [_signupScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height + 500)];
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

- (IBAction)checkbox:(id)sender {
    
    if ([checkboxSelected isEqual:@"Y"])
    {
        [_checkBtn setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        
        checkboxSelected=@"N";
    }
    else
    {
        [_checkBtn setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
        
        checkboxSelected=@"Y";
    }

    
}
- (IBAction)signupBtn:(id)sender {
    
    MyChannelListViewController *navTo = [self.storyboard instantiateViewControllerWithIdentifier:@"channelList"];
    [self.navigationController pushViewController:navTo animated:YES];
}
@end
