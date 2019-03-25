//
//  ViewController.m
//  Assignment4
//
//  Created by Tufel on 3/20/19.
//  Copyright © 2019 Tufel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *equation=@"";
NSString *resultString=@"";
bool flag=false;
- (void)viewDidLoad {
    [super viewDidLoad];
    _resultLabel.layer.borderColor = [UIColor blackColor].CGColor;
    _resultLabel.layer.borderWidth = 2.0;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onEqualsBtnClick:(id)sender {
    //NSString *numericExpression = @"4 + 3 - 2";
    if([equation length]>0)
    {
        NSExpression *expression = [NSExpression expressionWithFormat:equation];
        NSNumber *result = [expression expressionValueWithObject:nil context:nil];
        resultString = [result stringValue];
        _resultLabel.text = resultString;
        equation = resultString;
        flag=true;
    }
}
- (IBAction)onZeroBtnClick:(id)sender {
    if(flag==false)
    {
        if([equation length]==0)
        {
            _resultLabel.text = @"0";
        }
        else
        {
            equation = [equation stringByAppendingString:@"0"];
            _resultLabel.text = equation;
        }
    }
    else
    {
        _resultLabel.text=@"0";
    }
}
- (IBAction)onOneBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"1"];
    }
    else
    {
        equation=@"1";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onTwoBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"2"];
    }
    else
    {
        equation=@"2";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onThreeBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"3"];
    }
    else
    {
        equation=@"3";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onFourBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"4"];
    }
    else
    {
        equation=@"4";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onFiveBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"5"];
    }
    else
    {
        equation=@"5";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onSixBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"6"];
    }
    else
    {
        equation=@"6";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onSevenBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"7"];
    }
    else
    {
        equation=@"7";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onEightBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"8"];
    }
    else
    {
        equation=@"8";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onNineBtnClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"9"];
    }
    else
    {
        equation=@"9";
        flag=false;
    }
    _resultLabel.text = equation;
}
- (IBAction)onDotButtonClick:(id)sender {
    if(flag==false)
    {
        equation = [equation stringByAppendingString:@"."];
    }
    else
    {
    }
    _resultLabel.text = equation;
}
- (IBAction)onAddBtnClick:(id)sender {
    NSInteger length = [equation length];
    if(length == 0)
    {
        
    }
    else
    {
        NSString *tmpStr = [equation substringWithRange:NSMakeRange(length-1, 1)];
        if([tmpStr isEqualToString:@"+"] || [tmpStr isEqualToString:@"-"] || [tmpStr isEqualToString:@"*"] || [tmpStr isEqualToString:@"/"])
        {
        }
        else
        {
            equation = [equation stringByAppendingString:@"+"];
            _resultLabel.text = equation;
            flag=false;
        }
    }
}
- (IBAction)onSubBtnClick:(id)sender {
    NSInteger length = [equation length];
    if(length==0)
    {
        equation = @"-";
        _resultLabel.text=equation;
    }
    else
    {
        
        NSString *tmpStr = [equation substringWithRange:NSMakeRange(length-1, 1)];
        if([tmpStr isEqualToString:@"+"] || [tmpStr isEqualToString:@"-"] || [tmpStr isEqualToString:@"*"] || [tmpStr isEqualToString:@"/"])
        {
        }
        else
        {
            equation = [equation stringByAppendingString:@"-"];
            _resultLabel.text = equation;
            flag=false;
        }
    }
}
- (IBAction)onMultiplyBtnClick:(id)sender {
    NSInteger length = [equation length];
    if(length==0)
    {
        
    }
    else
    {
        NSString *tmpStr = [equation substringWithRange:NSMakeRange(length-1, 1)];
        if([tmpStr isEqualToString:@"+"] || [tmpStr isEqualToString:@"-"] || [tmpStr isEqualToString:@"*"] || [tmpStr isEqualToString:@"/"])
        {
        }
        else
        {
            equation = [equation stringByAppendingString:@"*"];
            _resultLabel.text = equation;
            flag=false;
        }
    }
}
- (IBAction)onDivideBtnClick:(id)sender {
    NSInteger length = [equation length];
    if(length==0)
    {
        
    }
    else
    {
        NSString *tmpStr = [equation substringWithRange:NSMakeRange(length-1, 1)];
        if([tmpStr isEqualToString:@"+"] || [tmpStr isEqualToString:@"-"] || [tmpStr isEqualToString:@"*"] || [tmpStr isEqualToString:@"/"])
        {
        }
        else
        {
            equation = [equation stringByAppendingString:@"/"];
            _resultLabel.text = equation;
            flag=false;
        }
    }
    
}
- (IBAction)onClearBtnClick:(id)sender {
    equation=@"";
    resultString=@"";
    flag=false;
    _resultLabel.text=@"";
}
@end
