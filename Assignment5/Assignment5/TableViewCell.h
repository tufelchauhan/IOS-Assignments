//
//  TableViewCell.h
//  Assignment5
//
//  Created by Tufel on 3/26/19.
//  Copyright © 2019 Tufel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *countryName;
@property (weak, nonatomic) IBOutlet UILabel *countryCode;
@property (weak, nonatomic) IBOutlet UILabel *currencyCode;
@property (weak, nonatomic) IBOutlet UILabel *phoneCode;
@property (weak, nonatomic) IBOutlet UIImageView *flagImage;
@end
