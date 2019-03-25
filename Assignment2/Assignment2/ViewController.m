//
//  ViewController.m
//  Assignment2
//
//  Created by Tufel Chauhan on 3/15/19.
//  Copyright © 2019 Tufel Chauhan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSignUpBtnClick:(UIButton *)sender {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewControllerSignup"];
    [vc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
