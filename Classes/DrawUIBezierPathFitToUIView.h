//
//  DrawUIBezierPathFitToUIView.h
//
//  Created by Mossuru777 on 2014/11/14.
//  Copyright (c) 2014 Mossan. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  fit UIBezierPaths to UIView class.
 *  Scaled UIBezierPath keeps original aspect ratio.
 */
@interface DrawUIBezierPathFitToUIView : NSObject
/**
 *  UIBezierPaths scale when fit to UIView
 *  the value must be greater than 0.0 and 1.0 or less.
 */
@property (nonatomic, readwrite) CGFloat scale;
- (id)init __attribute__((unavailable("init is not available.")));
/**
 *  Initialize with UIView to fit UIBezierPaths.
 *
 *  @param view UIView to fit UIBezierPaths.
 *
 *  @return An initialized object.
 */
- (id)initWithView:(UIView *)view;
/**
 *  Adding fit target UIBezierPath.
 *
 *  @param path        Fit target UIBezierPath object.
 *  @param fillColor   Path fill color OR nil.
 *  @param strokeColor Path stroke color OR nil.
 */
- (void)addPath:(UIBezierPath *)path fillColor:(UIColor *)fillColor strokeColor:(UIColor *)strokeColor;
/**
 *  Draw scaled UIBezierPaths for fit UIView.
 *  Scaled UIBezierPath keeps original aspect ratio.
 */
- (void)drawScaledPathFitToView;
@end
