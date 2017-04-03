//
//  ViewController.m
//  SKStore​Review​ControllerDemo
//
//  Created by Peter on 2017/3/31.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import "ViewController.h"
#import <StoreKit/SKStoreReviewController.h>


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

- (IBAction)actionShowStoreReview {
    [SKStoreReviewController requestReview];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

    });
}
    
- (IBAction)actionSetAlternateIcon {
    if ([[UIApplication sharedApplication] supportsAlternateIcons]) {//是否支持
        [[UIApplication sharedApplication] setAlternateIconName:@"appicon2"
                                              completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"%@",error);
            } else {
                NSLog(@"setAlternateIconName success!~");
            }
        }];
    }
//    else {
//        NSLog(@"what a pity~");
//    }
    
//    CFBundleIcons
//    CFBundleAlternateIcons
//    CFBundlePrimaryIcon
}
    
@end
