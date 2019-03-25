//
//  ViewControllerSignup.m
//  Assignment2
//
//  Created by Tufel Chauhan on 3/18/19.
//  Copyright © 2019 Tufel Chauhan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ViewControllerSignup.h"

@interface ViewControllerSignup ()


@end

@implementation ViewControllerSignup



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onSignInBtnClick:(UIButton *)sender {
    ViewControllerSignup *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [vc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:vc animated:YES completion:nil];
}


- (IBAction)onBtn1Click:(id)sender {
    if(_btn2.isSelected){
        _btn2.selected = false;
        _btn1.selected = true;
    }
    else
        _btn1.selected = true;
}
- (IBAction)onBtn2Click:(id)sender {
    if(_btn1.isSelected){
        _btn1.selected = false;
        _btn2.selected = true;
    }
    else
        _btn2.selected=true;
}
@end
