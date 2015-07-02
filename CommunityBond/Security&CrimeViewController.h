//
//  Security&CrimeViewController.h
//  CommunityBond
//
//  Created by iProsenjit9 on 08/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CrimeTableViewCell.h"

@interface Security_CrimeViewController : UIViewController{
    
    CrimeTableViewCell *showImage;
    
    NSMutableArray *images1;
    NSArray *images2;
    
}
@property (strong, nonatomic) IBOutlet UIScrollView *crimeScroll;


@end
