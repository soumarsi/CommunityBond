//
//  LeftMenu.m
//  CommunityBond
//
//  Created by iProsenjit9 on 08/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import "LeftMenu.h"

@implementation LeftMenu

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self)
    {
        self=[[[NSBundle mainBundle] loadNibNamed:@"LeftMenu" owner:self options:nil]objectAtIndex:0];
    }
    return self;
}


@end
