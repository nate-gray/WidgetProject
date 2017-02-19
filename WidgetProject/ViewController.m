//
//  ViewController.m
//  WidgetProject
//
//  Created by Gray, Nathan on 2/19/17.
//  Copyright © 2017 Gray, Nathan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize buttonCounter;

int buttonWasPressed;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(id)sender {
    
    buttonWasPressed++;
    
    buttonCounter.text = [NSString stringWithFormat:@"The button was pressed %d times", buttonWasPressed];
    
}
@end
