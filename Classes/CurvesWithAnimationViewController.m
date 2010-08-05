//
//  CurvesWithAnimationViewController.m
//  CurvesWithAnimation
//
//  Created by cwiles on 3/24/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "CurvesWithAnimationViewController.h"

@implementation CurvesWithAnimationViewController

- (void)viewDidLoad {

  /**
   * FIRST ROUNDED CORNER VIEW
   */
  RoundedCornersOne *rounded = [[RoundedCornersOne alloc] initWithFrame:CGRectMake(-320.f, 0, self.view.frame.size.width, 45.0f)];

  [self.view addSubview:rounded];
  
 
  CGRect frame = rounded.frame;
  
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
  [UIView setAnimationRepeatCount:3.0];
  [UIView setAnimationRepeatAutoreverses:YES];
  [UIView setAnimationDuration:1.0];
  
  /**
   * Slide up based on x axis
   */
  frame.origin.x = 0;
  rounded.frame  = frame;
  
  [UIView commitAnimations];
  
  
  /**
   * SECOND ROUNDED CORNER VIEW
   */
  RoundedCornersTwo *roundedtwo = [[RoundedCornersTwo alloc] initWithFrame:CGRectMake(-320.0f, rounded.frame.size.height + 10.0f, self.view.frame.size.width - 100, 45.0f)];
  
  [self.view addSubview:roundedtwo];
  
  
  CGRect roundedtwoframe = roundedtwo.frame;
  
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
  [UIView setAnimationRepeatCount:3.0];
  [UIView setAnimationRepeatAutoreverses:YES];
  [UIView setAnimationDuration:3.0];
  
  /**
   * Slide up based on x axis
   */
  roundedtwoframe.origin.x = 0;
  roundedtwo.frame         = roundedtwoframe;
  
  [UIView commitAnimations];
  
  /**
   * THIRD ROUNDED CORNER VIEW
   */
  
  RoundedCornersThree *roundedthree = [[RoundedCornersThree alloc] initWithFrame:CGRectMake(-320.f, (roundedtwo.frame.origin.y + roundedtwo.frame.size.height + 10.0f), self.view.frame.size.width - 10, 45.0f)];
  
  [self.view addSubview:roundedthree];
  
  
  CGRect roundedthreeframe = roundedthree.frame;
  
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
  [UIView setAnimationRepeatCount:3.0];
  [UIView setAnimationRepeatAutoreverses:YES];
  [UIView setAnimationDuration:2.0];
  
  /**
   * Slide up based on x axis
   */
  roundedthreeframe.origin.x = 0;
  roundedthree.frame         = roundedthreeframe;
  
  [UIView commitAnimations];
  
  [rounded release];
  [roundedtwo release];
  [roundedthree release];
  
  [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
  [super dealloc];
}

@end
