//
//  ViewController.m
//  Assignment5
//
//  Created by Tufel on 3/25/19.
//  Copyright © 2019 Tufel. All rights reserved.
//
#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
{
    NSMutableArray *imageNameArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *countryDict = [self JSONFromFile];
    NSString *cname;
    NSString *ccode;
    NSString *curcode;
    NSString *pcode;
    NSString *imgEncoded;
    UIImage *image;
    _countryName = [NSMutableArray array];
    _countryCode = [NSMutableArray array];
    _currenyCode = [NSMutableArray array];
    _phoneCode = [NSMutableArray array];
    _flagImage = [NSMutableArray array];
    for(NSDictionary *tmp in countryDict)
    {
        cname = [tmp objectForKey:@"name"];
        ccode = [tmp objectForKey:@"countryCode"];
        curcode = [tmp objectForKey:@"currencyCode"];
        pcode = [tmp objectForKey:@"phoneCode"];
        imgEncoded = [tmp objectForKey:@"media"];
        image = [self decodeBase64ToImage:imgEncoded];
        [_countryName addObject:cname];
        [_countryCode addObject:ccode];
        [_currenyCode addObject:curcode];
        [_phoneCode addObject:pcode];
        [_flagImage addObject:image];
    }
    self.tabel.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _countryName.count;
}

- (TableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"countryCell"];
    if(cell==nil)
    {
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.countryName.text = [_countryName objectAtIndex:indexPath.row];
    cell.countryCode.text = [NSString stringWithFormat: @"(%@)",[_countryCode objectAtIndex:indexPath.row]];
    cell.currencyCode.text = [_currenyCode objectAtIndex:indexPath.row];
    cell.phoneCode.text = [_phoneCode objectAtIndex:indexPath.row];
    cell.flagImage.image = [_flagImage objectAtIndex:indexPath.row];
    return cell;
}

- (NSDictionary *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"countrylist" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

- (UIImage *)decodeBase64ToImage:(NSString *)strEncodeData {
    NSData *data = [[NSData alloc]initWithBase64EncodedString:strEncodeData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [UIImage imageWithData:data];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
