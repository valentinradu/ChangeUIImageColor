//
//  UCViewController.m
//  ChangeUIImageColor
//
//  Created by Valentin Radu on 25/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import "UCViewController.h"

@interface UCViewController ()

@end

@implementation UCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    //we get the images
    UIImage* star = [UIImage imageNamed:@"star.png"];
    UIImage* gradient = [UIImage imageNamed:@"gradient.png"];
    UIImage* gloss = [UIImage imageNamed:@"gloss.png"];
    
    
    //the first container has grey and orange stars
    UIView* container1 = [[UIView alloc] init];
    
    for (int i=0; i<5; i++) {
        
        UIImage* resultImage;
        
        if (i<4) {
            resultImage = [star imageByColoring:[UIColor orangeColor]];
        }
        else{
            resultImage = star;
        }
        
        UIImageView* imageView = [[UIImageView alloc] initWithImage:resultImage];
        [container1 addSubview:imageView];
        
        imageView.topLeft = CGPointMake(container1.width, 0);
        container1.width += imageView.width;
        container1.height = MAX(container1.height, imageView.height);
        container1.center = self.view.center;
        container1.frame = CGRectOffset(container1.frame, 0, -50);
        
    }
    
    
    //the second container has selected stars with a more fancy gradient and a gloss
    
    UIView* container2 = [[UIView alloc] init];
    
    for (int i=0; i<5; i++) {
        
        UIImage* resultImage;
        
        if (i<4) {
            resultImage = [star imageByColoring:[UIColor colorWithPatternImage:gradient]];
            resultImage = [resultImage imageByColoring:[UIColor colorWithPatternImage:gloss]];
        }
        else{
            resultImage = star;
        }
        
        UIImageView* imageView = [[UIImageView alloc] initWithImage:resultImage];
        [container2 addSubview:imageView];
        
        imageView.topLeft = CGPointMake(container2.width, 0);
        container2.width += imageView.width;
        container2.height = MAX(container2.height, imageView.height);
        container2.center = self.view.center;
        container2.frame = CGRectOffset(container2.frame, 0, 50);
        
    }
    
    
    [self.view addSubview:container1];
    [self.view addSubview:container2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
