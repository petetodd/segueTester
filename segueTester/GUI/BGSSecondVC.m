//
//  BGSSecondVC.m
//  segueTester
//
//  Created by Peter Todd Air on 22/02/2015.
//  Copyright (c) 2015 Bright Green Star. All rights reserved.
//

#import "BGSSecondVC.h"
//#import "BGSMainVC.h"

@interface BGSSecondVC ()

@end

@implementation BGSSecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)unwindToMainMenu:(UIStoryboardSegue*)sender
{
 //   UIViewController *sourceViewController = sender.sourceViewController;
    // Pull any data from the view controller which initiated the unwind segue.
}

@end
