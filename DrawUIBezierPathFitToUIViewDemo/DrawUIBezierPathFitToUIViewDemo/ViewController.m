//
//  ViewController.m
//  DrawUIBezierPathFitToUIViewDemo
//
//  Created by Mossuru777 on 2014/11/14.
//  Copyright (c) 2014 Mossan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	// set TrainView border
	for (UIView *subView in self.view.subviews) {
		subView.layer.borderWidth = 0.5;
		subView.layer.borderColor = [[UIColor grayColor] CGColor];
	}
}

@end
