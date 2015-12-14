//
//  ViewController.m
//  Quartz2D_截屏
//
//  Created by mac on 15-9-5.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+LSP.h"
@interface ViewController ()
- (IBAction)clickedBtn;

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

- (IBAction)clickedBtn {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        UIImage *newImage = [UIImage captionWithView:self.view];
        
        NSString *file = @"/Users/mac/Desktop/picture";
        
        NSString *path = [file stringByAppendingPathComponent:@"new.png"];
        
        NSData *data = UIImagePNGRepresentation(newImage);
        
        [data writeToFile:path atomically:YES];

        
        
    });
    }
@end
