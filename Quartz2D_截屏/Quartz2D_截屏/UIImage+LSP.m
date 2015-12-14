//
//  UIImage+LSP.m
//  Quartz2D_截屏
//
//  Created by mac on 15-9-5.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "UIImage+LSP.h"

@implementation UIImage (LSP)
+ (instancetype)captionWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
}
@end
