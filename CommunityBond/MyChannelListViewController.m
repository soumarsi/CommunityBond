//
//  MyChannelListViewController.m
//  CommunityBond
//
//  Created by esolz it on 04/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import "MyChannelListViewController.h"
#import "RightMenu.h"
#import "Security&CrimeViewController.h"
@interface MyChannelListViewController ()

@end

@implementation MyChannelListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    [_upBtnYAxis setHidden:YES];
    [_downBtnYAxis setHidden:NO];
    
// ------ Scrollview xontent size--------//
    
    [_channelListScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height + 400)];
    
//================================================================================================
    
//    _channelListScroll.contentSize = [_channelListScroll sizeThatFits:_channelListScroll.frame.size];
    
    NSLog(@"THE SRCEEN HIEGHT IS ------> %f",self.view.bounds.size.height);
    
//  ----------  For right menu
    
    rightMenuView = [[RightMenu alloc]init];//WithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 105, _destinationDropdown.bounds.origin.y+_destinationDropdown.bounds.size.height+2.0f, 30.0f, 100.0f)];
    rightMenuView.hidden=YES;
    [self.view addSubview:rightMenuView];
    
//    --------- for left menu
    
    leftMenuView = [[LeftMenu alloc]init];
    leftMenuView.hidden = YES;
    [self.view addSubview:leftMenuView];
    
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


- (IBAction)downBtn:(id)sender {
    
    //---Auto scroll by pressing down button
    
    if (self.view.bounds.size.height >= 568.0f && self.view.bounds.size.height < 667.0f) {  //-----For iPhone 5 5s
        
        NSLog(@"THE SRCEEN HIEGHT 5 5s ------> %f",self.view.bounds.size.height);
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y + 250) animated:YES];
        
    }else if (self.view.bounds.size.height >= 667.0f && self.view.bounds.size.height < 736.0f){ //-----For iPhone 6
        
        NSLog(@"THE SRCEEN HIEGHT 6 ------> %f",self.view.bounds.size.height);

        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y + 290) animated:YES];
        
    }else if (self.view.bounds.size.height >= 736.0f){ //-----For iPhone 6+
        
        NSLog(@"THE SRCEEN HIEGHT 6+ ------> %f",self.view.bounds.size.height);
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y + 320) animated:YES];
        
    }else{  //-----For iPhone 4 4s
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y + 190) animated:YES];

    }
    
    
    //---Changing down button to up button and change the position of the button
    
    [_downBtnYAxis setHidden:YES];
    [_upBtnYAxis setHidden:NO];
    

}

- (IBAction)upBtn:(id)sender {
    
    [_downBtnYAxis setHidden:NO];
    [_upBtnYAxis setHidden:YES];
    
    if (self.view.bounds.size.height >= 568.0f && self.view.bounds.size.height < 667.0f) {  //-----For iPhone 5 5s
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y - 250) animated:YES];
        
    }else if (self.view.bounds.size.height >= 667.0f && self.view.bounds.size.height < 736.0f){ //-----For iPhone 6
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y - 290) animated:YES];
        
    }else if (self.view.bounds.size.height >= 736.0f){ //-----For iPhone 6+
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y - 320) animated:YES];
        
    }else{  //-----For iPhone 4 4s
        
        [_channelListScroll setContentOffset:CGPointMake(0, _channelListScroll.contentOffset.y - 190) animated:YES];
        
    }
    
}

- (IBAction)destinationBtn:(id)sender {
    
    [rightMenuView setFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 65, _destinationDropdown.bounds.origin.y+_destinationDropdown.bounds.size.height+10.0f, 30.0f, 100.0f)];
    
    if (rightMenuView.hidden == YES) {
        
        rightMenuView.hidden=NO;
        
    }else{
        
        rightMenuView.hidden = YES;
    }
    
}

- (IBAction)leftMenuBtn:(id)sender {
    
    [leftMenuView setFrame:CGRectMake(0.0f, 0.0f, 100.0f, [UIScreen mainScreen].bounds.size.height)];
    
    if (leftMenuView.hidden == YES) {
        
        _mainview.frame = CGRectMake(260.0f, 0.0f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        
        leftMenuView.hidden=NO;
        
    }else{
        
        _mainview.frame = CGRectMake(0.0f, 0.0f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        
        leftMenuView.hidden = YES;
    }
    
//    _mainview.frame = CGRectMake(230.0f, 0.0f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}

- (IBAction)crimeBtn:(id)sender {
    
    Security_CrimeViewController *nav = [self.storyboard instantiateViewControllerWithIdentifier:@"security&crime"];
    [self.navigationController pushViewController:nav animated:YES];
}

@end
