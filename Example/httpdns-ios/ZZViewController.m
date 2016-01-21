//
//  ZZViewController.m
//  httpdns-ios
//
//  Created by zz on 01/22/2016.
//  Copyright (c) 2016 zz. All rights reserved.
//

#import "ZZViewController.h"
#import "HttpDNS.h"

@interface ZZViewController ()
@property (strong, nonatomic) IBOutlet UILabel *retLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)go:(UIButton *)sender {
    [[HttpDNS shareInstance] getIpByHost:_textField.text next:^(NSError *error, NSString *ip) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                _retLabel.text = [error description];
            } else {
                _retLabel.text = ip;
            }
        });
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
