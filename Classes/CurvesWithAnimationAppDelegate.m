//
//  CurvesWithAnimationAppDelegate.m
//  CurvesWithAnimation
//
//  Created by cwiles on 3/24/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "CurvesWithAnimationAppDelegate.h"
#import "CurvesWithAnimationViewController.h"

@implementation CurvesWithAnimationAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
