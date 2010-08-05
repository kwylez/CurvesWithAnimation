//
//  RoundedCornersOne.m
//  CurvesWithAnimation
//
//  Created by cwiles on 3/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RoundedCornersOne.h"


@implementation RoundedCornersOne

- (id)initWithFrame:(CGRect)frame {
  
  if (self = [super initWithFrame:frame]) {
    // Initialization code
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}

- (void)drawRect:(CGRect)rect {
  
  CGSize size = self.bounds.size;
  
  CGFloat width1 = size.width * 0.75f; 
  
  CGFloat height = size.height * 0.2f;   
  
  CGRect one     = rect;
  CGRect oneText = CGRectMake(10.0f, height - 2.0f, width1, height - 30.0f);
  
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  
  [[UIColor blueColor] setFill];
  CGPathRef pathOne = [self pathInRect:one];
  CGContextAddPath(ctx, pathOne);
  CGPathRelease(pathOne);
  CGContextFillPath(ctx); 
  
  [[UIColor blackColor] setFill];
  [@"One" drawInRect:oneText withFont:[UIFont systemFontOfSize:34]];
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
