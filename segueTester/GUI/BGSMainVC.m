//
//  BGSMainVC.m
//  segueTester
//
//  Created by Peter Todd Air on 22/02/2015.
//  Copyright (c) 2015 Bright Green Star. All rights reserved.
//

#import "BGSMainVC.h"

@interface BGSMainVC ()

@end

@implementation BGSMainVC

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


- (IBAction)segueBut1Action:(id)sender {
    [self performSegueWithIdentifier:@"customSegueLeftArc" sender:self];
}

#pragma mark - Exit Segues

- (IBAction)unwindToMainMenu:(UIStoryboardSegue *)segue {
    //NSLog(@"DEBUG Popping back to Logon");
    // reset UI elements etc here
    
}


@end
