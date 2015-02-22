//
//  BGSSegueLeftArcWave.m
//  segueTester
//
//  Created by Peter Todd Air on 22/02/2015.
//  Copyright (c) 2015 Bright Green Star. All rights reserved.
//

#import "BGSSegueLeftArcWave.h"
#import "BGSMainVC.h"
#import "BGSTransitionLeftArcWave.h"

@implementation BGSSegueLeftArcWave

-(void)perform {
    
    BGSMainVC* sourceVC = (BGSMainVC *)self.sourceViewController;
    UIViewController* destVC = (UIViewController *)self.destinationViewController;
    
    //Set the transitioningdelegate (for a modal transition)
    destVC.transitioningDelegate = self;
    
    //strong property, necessary to retain the Segue after perform: is finished
    //only needed if you want the customSegue to be the transitioningDelegate
    sourceVC.customSegue = self;
    
    
    //Set the modalPresentationStyle
    if (&UITransitionContextFromViewKey) {
        //iOS8
        destVC.modalPresentationStyle = UIModalPresentationFullScreen;
    } else {
        //iOS7
        destVC.modalPresentationStyle = UIModalPresentationCustom;
    }
    
    
    //Call the presentation
    [sourceVC presentViewController:destVC animated:YES completion:^{
        //release ourselves again
        sourceVC.customSegue = nil;
    }];
    
   
    
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    NSLog(@"DEBUG animationControllerForPresentedController" );
    
    //return nil;
    return [[BGSTransitionLeftArcWave alloc] init];
}


@end
