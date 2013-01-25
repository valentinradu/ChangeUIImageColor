//
//  UIImage+VRAdditions.m
//  lmr
//
//  Created by Valentin Radu on 22/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import "UIImage+VRColor.h"

@implementation UIImage (VRColor)

-(UIImage*)imageByColoring:(UIColor *)color
{

    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, 0.0f, 0.0f);
    
    [self drawInRect:rect];
    [color setFill];
    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceAtop);
    
    UIImage * colorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return colorImage;
}

@end
