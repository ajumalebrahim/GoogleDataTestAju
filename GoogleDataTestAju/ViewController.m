//
//  ViewController.m
//  GoogleDataTestAju
//
//  Created by Eworks on 08/03/13.
//  Copyright (c) 2013 Eworks. All rights reserved.
//

#import "ViewController.h"
#import "GDataOAuthViewControllerTouch.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)btnSignIN:(id)sender{
    NSLog(@"btn pressed");
    GDataOAuthViewControllerTouch *viewController = [[GDataOAuthViewControllerTouch alloc] initWithScope:@"http://gdata.youtube.com"
                                                                                                 language:nil
                                                                                           appServiceName:@"youtube"
                                                                                                 delegate:self
                                                                                         finishedSelector:@selector(viewController:finishedWithAuth:error:)];
//     [self.navigationController pushViewController:viewController animated:YES];
//    [[self navigationController] pushViewController:viewController animated:YES];
    [self.navigationController pushViewController:viewController animated:YES];
//    [viewController release];
//    [self presentViewController: viewController animated:YES completion:^{}];
    
}

- (void)viewController:(GDataOAuthViewControllerTouch *)viewController
      finishedWithAuth:(GDataOAuthAuthentication *)auth
                 error:(NSError *)error{
    NSLog(@"scope: %@", auth.scope);
    NSLog(@"displayName: %@", auth.displayName);
    NSLog(@"hostedDomain: %@", auth.hostedDomain);
    NSLog(@"language: %@", auth.language);
    NSLog(@"mobile: %@", auth.mobile);
    NSLog(@"consumerKey: %@", auth.consumerKey);
    NSLog(@"signatureMethod: %@", auth.signatureMethod);
    NSLog(@"version: %@", auth.version);
    NSLog(@"token: %@", auth.token);
    NSLog(@"verifier: %@", auth.verifier);
    NSLog(@"accessToken: %@", auth.accessToken);
    NSLog(@"token Secret: %@", auth.tokenSecret);
    NSLog(@"timestamp: %@", auth.timestamp);
    NSLog(@"nonce: %@", auth.nonce);

    
}
//- (void)viewController:(GDataOAuthViewControllerTouch *)viewController
//      finishedWithAuth:(GDataOAuthAuthentication *)auth
//                 error:(NSError *)error
//{
////    [self dismissViewControllerAnimated:YES completion:^{}];
//    NSLog(@"scope: %@", auth.scope);
//    NSLog(@"displayName: %@", auth.displayName);
//    NSLog(@"hostedDomain: %@", auth.hostedDomain);
//    NSLog(@"language: %@", auth.language);
//    NSLog(@"mobile: %@", auth.mobile);
//    NSLog(@"consumerKey: %@", auth.consumerKey);
//    NSLog(@"signatureMethod: %@", auth.signatureMethod);
//    NSLog(@"version: %@", auth.version);
//    NSLog(@"token: %@", auth.token);
//    NSLog(@"verifier: %@", auth.verifier);
//    NSLog(@"accessToken: %@", auth.accessToken);
//    NSLog(@"token Secret: %@", auth.tokenSecret);
//    NSLog(@"timestamp: %@", auth.timestamp);
//    NSLog(@"nonce: %@", auth.nonce);
////    NSLog(@"userData: %@",auth.userData);
//    
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
