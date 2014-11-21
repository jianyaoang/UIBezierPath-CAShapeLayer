//
//  ViewController.m
//  UIBezierPath
//
//  Created by Jian Yao Ang on 11/21/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self draw];
}

-(void)draw
{
    UIImageView *maskedImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"jlaw5"]];
    
    //create UIBezierPath object
    UIBezierPath *thePath = [UIBezierPath bezierPath];
    
    //create starting point
    [thePath moveToPoint:CGPointMake(200, 30)];
    
    //add lines
    [thePath addLineToPoint:CGPointMake(300.0, 400.0)];
    [thePath addLineToPoint:CGPointMake(50.0, 400.0)];
    [thePath addLineToPoint:CGPointMake(200, 30)];
    [thePath closePath];
    
    CAShapeLayer *theLayer = [[CAShapeLayer alloc] init];
    theLayer.path = thePath.CGPath;
    
    //create the shape layer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = [thePath CGPath];
    shapeLayer.strokeColor = [UIColor blueColor].CGColor;
    shapeLayer.lineWidth = 15;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;

    maskedImageView.layer.mask = theLayer;
    [maskedImageView.layer addSublayer:shapeLayer];
    [self.view addSubview:maskedImageView];
}




@end
