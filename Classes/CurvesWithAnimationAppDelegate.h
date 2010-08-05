//
//  CurvesWithAnimationAppDelegate.h
//  CurvesWithAnimation
//
//  Created by cwiles on 3/24/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CurvesWithAnimationViewController;

@interface CurvesWithAnimationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CurvesWithAnimationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CurvesWithAnimationViewController *viewController;

@end

