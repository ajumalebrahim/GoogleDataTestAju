//
//  AppDelegate.h
//  GoogleDataTestAju
//
//  Created by Eworks on 08/03/13.
//  Copyright (c) 2013 Eworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigationController;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) ViewController *viewController;

@end
