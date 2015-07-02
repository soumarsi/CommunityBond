//
//  Security&CrimeViewController.m
//  CommunityBond
//
//  Created by iProsenjit9 on 08/06/15.
//  Copyright (c) 2015 esolz. All rights reserved.
//

#import "Security&CrimeViewController.h"
#import "CrimeTableViewCell.h"

@interface Security_CrimeViewController ()<UITabBarControllerDelegate, UITableViewDataSource>

@end

@implementation Security_CrimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    showImage = [[CrimeTableViewCell alloc]init];
    
//    [_crimeScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width + 1500, 47)];
    
//    -----------------Adjusting view by varying iPhone screen size-------------
    
    if (self.view.bounds.size.width >= 320.0f && self.view.bounds.size.width < 375.0f) {  //-----For iPhone 5 5s
        
        NSLog(@"THE SRCEEN HIEGHT 5 5s ------> %f",self.view.bounds.size.width);
        
        [_crimeScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width + 1300, 47)];
        
    }else if (self.view.bounds.size.width >= 375.0f && self.view.bounds.size.width < 414.0f){ //-----For iPhone 6
        
        NSLog(@"THE SRCEEN HIEGHT 6 ------> %f",self.view.bounds.size.width);
        
        [_crimeScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width + 1500, 47)];
        
    }else if (self.view.bounds.size.width >= 414.0f){ //-----For iPhone 6+
        
        NSLog(@"THE SRCEEN HIEGHT 6+ ------> %f",self.view.bounds.size.height);
        
        [_crimeScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width + 1600, 47)];
        
    }else{  //-----For iPhone 4 4s
        
        [_crimeScroll setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width + 1500, 47)];
        
    }
    
//    -------------Static images array-----------------
    
//    images1 = [NSArray arrayWithObjects:[UIImage imageNamed:@"pic1"],[UIImage imageNamed:@"pic2"],[UIImage imageNamed:@"pic3"],[UIImage imageNamed:@"pic4"],[UIImage imageNamed:@"pic5"], nil];
    
    images1 = [NSMutableArray arrayWithObjects:@"pic1",@"pic2",@"pic3",@"pic4",@"pic5", nil];
    
    images2 = [NSArray arrayWithObjects:[UIImage imageNamed:@"tinyIcon1"],[UIImage imageNamed:@"tinyIcon2"],[UIImage imageNamed:@"tinyIcon3"], nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"array count======== %lu",(unsigned long)images1.count);
    
    return [images1 count];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    NSString *CellIndentifier=@"cell";
    
//    CrimeTableViewCell *cell=[[CrimeTableViewCell alloc]init];
//    
//    cell=[[CrimeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
    
    static NSString *simpleTableIdentifier = @"cell";
    
    CrimeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
////    viewing image-----
//    NSLog(@"IMAGEEEEEE-----> %@",[UIImage imageNamed:[images1 objectAtIndex:indexPath.row]]);
//
    
    [cell addSubview:cell.imageview1];

    cell.imageview1.image=[UIImage imageNamed:[images1 objectAtIndex:indexPath.row]];
    
    return cell;
    
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

@end
