//
//  MyChannelListViewController.h
//  CommunityBond
//
//  Created by esolz it on 04/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RightMenu.h"
#import "LeftMenu.h"
@interface MyChannelListViewController : UIViewController

{
    RightMenu *rightMenuView;
    LeftMenu *leftMenuView;
}
@property (strong, nonatomic) IBOutlet UIScrollView *channelListScroll;
@property (strong, nonatomic) IBOutlet UIButton *downBtnYAxis;
@property (strong, nonatomic) IBOutlet UIButton *upBtnYAxis;
@property (strong, nonatomic) IBOutlet UIButton *destinationDropdown;
@property (strong, nonatomic) IBOutlet UIButton *leftMenu;
@property (strong, nonatomic) IBOutlet UIView *mainview;

- (IBAction)downBtn:(id)sender;
- (IBAction)upBtn:(id)sender;
- (IBAction)destinationBtn:(id)sender;
- (IBAction)leftMenuBtn:(id)sender;
- (IBAction)crimeBtn:(id)sender;

@end
