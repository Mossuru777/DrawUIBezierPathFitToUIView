//
//  DrawUIBezierPathFitToUIView.m
//
//  Created by Mossuru777 on 2014/11/14.
//  Copyright (c) 2014 Mossan. All rights reserved.
//

#import "DrawUIBezierPathFitToUIView.h"

@implementation DrawUIBezierPathFitToUIView
{
	@private
	CGSize viewSize;
	NSMutableArray *paths;
}

- (id)init
{
	[[NSException exceptionWithName:@"NoArgumentsInitializingException"
                             reason:@"Can't initialize with init method. Use initWithView method."
                           userInfo:nil
     ] raise];
	return nil;
}

- (id)initWithView:(UIView *)view
{
	self = [super init];
	if(self)
	{
		if(view == nil)
		{
			[[NSException exceptionWithName:@"NilObjectException"
                                     reason:@"Can't initialize UIView with nil."
                                   userInfo:nil
             ] raise];
		}
		viewSize = view.frame.size;
		paths = [[NSMutableArray alloc] init];
		self.scale = 1.0;
	}
	return self;
}

- (void)addPath:(UIBezierPath *)path fillColor:(UIColor *)fillColor strokeColor:(UIColor *)strokeColor
{
	// check exist path in array
	for (NSArray *path_info in paths)
	{
		if([path_info[0] isEqual:path])
		{
			return;
		}
	}

	// add path to array
	if(fillColor != nil)
	{
		if(strokeColor != nil)
		{
			[paths addObject:[[NSArray alloc] initWithObjects:path, fillColor, strokeColor, nil]];
		}
		else {
			[paths addObject:[[NSArray alloc] initWithObjects:path, fillColor, [NSNull null], nil]];
		}
	}
	else {
		if(strokeColor != nil)
		{
			[paths addObject:[[NSArray alloc] initWithObjects:path, [NSNull null], strokeColor, nil]];
		}
		else {
			[NSException raise:@"NoDrawPathException" format:@"Arguments indicate NO draw path!!!"];
		}
	}
}

- (void)drawScaledPathFitToView
{
#if __LP64__
	CGRect totalRect = CGRectMake(DBL_MAX, DBL_MAX, 0, 0);
#else
	CGRect totalRect = CGRectMake(FLT_MAX, FLT_MAX, 0, 0);
#endif
	CGFloat fit_scale;
	CGFloat centering_margin_x = 0;
	CGFloat centering_margin_y = 0;
	CGFloat move_x;
	CGFloat move_y;

	// calculate total bounds / origin
	for (NSArray *path_info in paths)
	{
		UIBezierPath *path = path_info[0];
		NSObject *fillColor = path_info[1];
		NSObject *strokeColor = path_info[2];

		// reset path scaling
		[path applyTransform:CGAffineTransformIdentity];

		// extends bounds / origin
		if([strokeColor isKindOfClass:[UIColor class]])
		{
			// width
			if(path.bounds.origin.x + path.bounds.size.width + (path.lineWidth / 2) > totalRect.size.width)
			{
				totalRect.size.width = path.bounds.origin.x + path.bounds.size.width + (path.lineWidth / 2);
			}

			// x origin
			if(path.bounds.origin.x - (path.lineWidth / 2) < totalRect.origin.x)
			{
				totalRect.origin.x = path.bounds.origin.x - (path.lineWidth / 2);
			}

			// height
			if(path.bounds.origin.y + path.bounds.size.height + (path.lineWidth / 2) > totalRect.size.height)
			{
				totalRect.size.height = path.bounds.origin.y + path.bounds.size.height + (path.lineWidth / 2);
			}

			// y origin
			if(path.bounds.origin.y - (path.lineWidth / 2) < totalRect.origin.y)
			{
				totalRect.origin.y = path.bounds.origin.y - (path.lineWidth / 2);
			}
		}
		else if([fillColor isKindOfClass:[UIColor class]])
		{
			// width
			if(path.bounds.origin.x + path.bounds.size.width > totalRect.size.width)
			{
				totalRect.size.width = path.bounds.origin.x + path.bounds.size.width;
			}

			// x origin
			if(path.bounds.origin.x < totalRect.origin.x)
			{
				totalRect.origin.x = path.bounds.origin.x;
			}

			// height
			if(path.bounds.origin.y + path.bounds.size.height > totalRect.size.height)
			{
				totalRect.size.height = path.bounds.origin.y + path.bounds.size.height;
			}

			// y origin
			if(path.bounds.origin.y < totalRect.origin.y)
			{
				totalRect.origin.y = path.bounds.origin.y;
			}
		}
	}

	// calculate scale / centering margin / move
	if(self.scale > 1.0 || self.scale <= 0)
	{
		self.scale = 1.0;
	}
	if(viewSize.width / totalRect.size.width < viewSize.height / totalRect.size.height)
	{
		fit_scale = viewSize.width / totalRect.size.width * self.scale;
	}
	else {
		fit_scale = viewSize.height / totalRect.size.height * self.scale;
	}
	centering_margin_x = (viewSize.width / 2) - (totalRect.size.width * fit_scale / 2);
	centering_margin_y = (viewSize.height / 2) - (totalRect.size.height * fit_scale / 2);
	move_x = totalRect.origin.x * fit_scale;
	move_y = totalRect.origin.y * fit_scale;

	// draw scaled path
	for(NSArray *path_info in paths)
	{
		UIBezierPath *path = path_info[0];
		NSObject *fillColor = path_info[1];
		NSObject *strokeColor = path_info[2];

		// scaling path
		path.lineWidth = path.lineWidth * fit_scale;
		[path applyTransform:CGAffineTransformMakeScale(fit_scale, fit_scale)];

		// move path
		[path applyTransform:CGAffineTransformMakeTranslation(centering_margin_x - move_x, centering_margin_y - move_y)];

		// fill path
		if([fillColor isKindOfClass:[UIColor class]])
		{
			[((UIColor *)fillColor) setFill];
			[path fill];
		}

		// stroke path
		if([strokeColor isKindOfClass:[UIColor class]])
		{
			[((UIColor *)strokeColor) setStroke];
			[path stroke];
		}
	}
}

@end
