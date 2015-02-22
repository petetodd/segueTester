//
//  BGSTransitionLeftArcWave.m
//  segueTester
//
//  Created by Peter Todd Air on 22/02/2015.
//  Copyright (c) 2015 Bright Green Star. All rights reserved.
//

#import "BGSTransitionLeftArcWave.h"


static NSTimeInterval const BGSTransitionDuration = 2.5f;


@implementation BGSTransitionLeftArcWave


- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
   // UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *container = [transitionContext containerView];

    toViewController.view.transform = CGAffineTransformMakeScale(0, 0);
    [container addSubview:toViewController.view];

    
    [UIView animateKeyframesWithDuration:BGSTransitionDuration delay:0 options:0 animations:^{
            toViewController.view.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:finished];
    }];
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return BGSTransitionDuration;
}

@end
