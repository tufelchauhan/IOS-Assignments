//
//  ViewController.h
//  Assignment5
//
//  Created by Tufel on 3/25/19.
//  Copyright © 2019 Tufel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
    @property(strong,nonatomic)NSMutableArray *countryName;
    @property(strong,nonatomic)NSMutableArray *countryCode;
    @property(strong,nonatomic)NSMutableArray *currenyCode;
    @property(strong,nonatomic)NSMutableArray *phoneCode;
    @property(strong,nonatomic)NSMutableArray *flagImage;
@end

