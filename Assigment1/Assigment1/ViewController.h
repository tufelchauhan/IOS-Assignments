//
//  ViewController.h
//  Assigment1
//
//  Created by Tufel Chauhan on 3/15/19.
//  Copyright © 2019 Tufel Chauhan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UILabel *outputText;

- (IBAction)show:(id)sender;

@end

