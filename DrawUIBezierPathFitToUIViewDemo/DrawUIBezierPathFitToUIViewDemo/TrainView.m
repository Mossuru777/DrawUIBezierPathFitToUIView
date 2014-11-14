//
//  TrainView.m
//  DrawUIBezierPathFitToUIViewDemo
//
//  Created by Mossuru777 on 2014/11/14.
//  Copyright (c) 2014 Mossan. All rights reserved.
//

#import "TrainView.h"
#import "DrawUIBezierPathFitToUIView.h"

@implementation TrainView
{
	@private
	DrawUIBezierPathFitToUIView *fitPath;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
	// set view bounds
	fitPath = [[DrawUIBezierPathFitToUIView alloc] initWithView:self];

	// can change scale when fit to UIView (1.0 <= value < 0.0)
	fitPath.scale = 1.0;

	// draw train
	// UIBezierPaths output from DrawScript
    UIColor* fillColor = [UIColor colorWithRed: 0.533 green: 0.533 blue: 0.533 alpha: 1];
	UIBezierPath* path = [UIBezierPath bezierPath];
	[path moveToPoint: CGPointMake(150,206)];
	[path addCurveToPoint: CGPointMake(173,206) controlPoint1: CGPointMake(150,206) controlPoint2: CGPointMake(158,206)];
	[path addCurveToPoint: CGPointMake(193,166) controlPoint1: CGPointMake(182,206) controlPoint2: CGPointMake(193,181)];
	[path addCurveToPoint: CGPointMake(194,28) controlPoint1: CGPointMake(193,162) controlPoint2: CGPointMake(194,47)];
	[path addCurveToPoint: CGPointMake(164,0) controlPoint1: CGPointMake(194,9) controlPoint2: CGPointMake(177,0)];
	[path addLineToPoint: CGPointMake(37,0)];
	[path addCurveToPoint: CGPointMake(7,28) controlPoint1: CGPointMake(23,0) controlPoint2: CGPointMake(7,9)];
	[path addCurveToPoint: CGPointMake(7,166) controlPoint1: CGPointMake(7,47) controlPoint2: CGPointMake(7,160)];
	[path addCurveToPoint: CGPointMake(27,206) controlPoint1: CGPointMake(7,173) controlPoint2: CGPointMake(18,205)];
	[path addCurveToPoint: CGPointMake(50,206) controlPoint1: CGPointMake(42,206) controlPoint2: CGPointMake(50,206)];
	[path addLineToPoint: CGPointMake(0,275)];
	[path addLineToPoint: CGPointMake(29,275)];
	[path addLineToPoint: CGPointMake(62,230)];
	[path addLineToPoint: CGPointMake(139,230)];
	[path addLineToPoint: CGPointMake(171,275)];
	[path addLineToPoint: CGPointMake(201,275)];
	[path addLineToPoint: CGPointMake(150,206)];
	//[fillColor setFill];
	//[path fill];
	[fitPath addPath:path fillColor:fillColor strokeColor:nil];
	
	UIColor* fillColor1 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
	UIBezierPath* path1 = [UIBezierPath bezierPath];
	[path1 moveToPoint: CGPointMake(69,13)];
	[path1 addLineToPoint: CGPointMake(131,13)];
	[path1 addCurveToPoint: CGPointMake(139,21) controlPoint1: CGPointMake(136,13) controlPoint2: CGPointMake(139,17)];
	[path1 addCurveToPoint: CGPointMake(131,28) controlPoint1: CGPointMake(139,25) controlPoint2: CGPointMake(136,28)];
	[path1 addLineToPoint: CGPointMake(69,28)];
	[path1 addCurveToPoint: CGPointMake(62,21) controlPoint1: CGPointMake(65,28) controlPoint2: CGPointMake(62,25)];
	[path1 addCurveToPoint: CGPointMake(69,13) controlPoint1: CGPointMake(62,17) controlPoint2: CGPointMake(65,13)];
	//[fillColor1 setFill];
	//[path1 fill];
	[fitPath addPath:path1 fillColor:fillColor1 strokeColor:nil];
	
	UIColor* fillColor2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
	UIBezierPath* path2 = [UIBezierPath bezierPath];
	[path2 moveToPoint: CGPointMake(28,107)];
	[path2 addLineToPoint: CGPointMake(28,56)];
	[path2 addCurveToPoint: CGPointMake(38,46) controlPoint1: CGPointMake(28,51) controlPoint2: CGPointMake(32,46)];
	[path2 addLineToPoint: CGPointMake(163,46)];
	[path2 addCurveToPoint: CGPointMake(173,56) controlPoint1: CGPointMake(168,46) controlPoint2: CGPointMake(173,51)];
	[path2 addLineToPoint: CGPointMake(173,107)];
	[path2 addCurveToPoint: CGPointMake(163,117) controlPoint1: CGPointMake(173,113) controlPoint2: CGPointMake(168,117)];
	[path2 addLineToPoint: CGPointMake(38,117)];
	[path2 addCurveToPoint: CGPointMake(28,107) controlPoint1: CGPointMake(32,117) controlPoint2: CGPointMake(28,113)];
	//[fillColor2 setFill];
	//[path2 fill];
	[fitPath addPath:path2 fillColor:fillColor2 strokeColor:nil];
	
	UIColor* fillColor3 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
	UIBezierPath* path3 = [UIBezierPath bezierPath];
	[path3 moveToPoint: CGPointMake(50,178)];
	[path3 addCurveToPoint: CGPointMake(37,165) controlPoint1: CGPointMake(43,178) controlPoint2: CGPointMake(37,172)];
	[path3 addCurveToPoint: CGPointMake(50,152) controlPoint1: CGPointMake(37,158) controlPoint2: CGPointMake(43,152)];
	[path3 addCurveToPoint: CGPointMake(63,165) controlPoint1: CGPointMake(57,152) controlPoint2: CGPointMake(63,158)];
	[path3 addCurveToPoint: CGPointMake(50,178) controlPoint1: CGPointMake(63,172) controlPoint2: CGPointMake(57,178)];
	//[fillColor3 setFill];
	//[path3 fill];
	[fitPath addPath:path3 fillColor:fillColor3 strokeColor:nil];
	
	UIColor* fillColor4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
	UIBezierPath* path4 = [UIBezierPath bezierPath];
	[path4 moveToPoint: CGPointMake(138,165)];
	[path4 addCurveToPoint: CGPointMake(151,152) controlPoint1: CGPointMake(138,158) controlPoint2: CGPointMake(144,152)];
	[path4 addCurveToPoint: CGPointMake(164,165) controlPoint1: CGPointMake(158,152) controlPoint2: CGPointMake(164,158)];
	[path4 addCurveToPoint: CGPointMake(151,178) controlPoint1: CGPointMake(164,172) controlPoint2: CGPointMake(158,178)];
	[path4 addCurveToPoint: CGPointMake(138,165) controlPoint1: CGPointMake(144,178) controlPoint2: CGPointMake(138,172)];
	//[fillColor4 setFill];
	//[path4 fill];
	[fitPath addPath:path4 fillColor:fillColor4 strokeColor:nil];
	
	[fitPath drawScaledPathFitToView];
}

@end
