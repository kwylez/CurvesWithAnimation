//
//  RoundedCornersThree.m
//  CurvesWithAnimation
//
//  Created by cwiles on 3/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RoundedCornersThree.h"


@implementation RoundedCornersThree


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
      self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
  
  CGSize size = self.bounds.size;
  
  CGFloat width3 = size.width * 0.75f; 
  
  CGFloat height = size.height * 0.2f;   
  
  CGRect three     = rect;
  CGRect threeText = CGRectMake(10.0f, height - 2.0f, width3, height - 30.0f);
  
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  
  [[UIColor orangeColor] setFill];
  CGPathRef pathThree = [self pathInRect:three];
  CGContextAddPath(ctx, pathThree);
  CGPathRelease(pathThree);
  CGContextFillPath(ctx); 
  
  [[UIColor blackColor] setFill];
  [@"Three" drawInRect:threeText withFont:[UIFont systemFontOfSize:34]];
}

-(CGPathRef) pathInRect:(CGRect)rect {
  
  CGMutablePathRef path = CGPathCreateMutable();
  CGFloat radius        = CGRectGetHeight(rect) / 2.0f;
  
  CGPathMoveToPoint(path, NULL, CGRectGetMinX(rect), CGRectGetMinY(rect));
  CGPathAddLineToPoint(path, NULL, CGRectGetMaxX(rect) - radius, CGRectGetMinY(rect));
  CGPathAddArc(path, NULL, CGRectGetMaxX(rect) - radius, CGRectGetMinY(rect) + radius, radius, -M_PI / 2.0f, M_PI / 2.0f, NO);
  CGPathAddLineToPoint(path, NULL, CGRectGetMinX(rect), CGRectGetMaxY(rect));
  CGPathCloseSubpath(path);
  CGPathRef imutablePath = CGPathCreateCopy(path);
  CGPathRelease(path);
  
  return imutablePath;
}


- (void)dealloc {
    [super dealloc];
}


@end
