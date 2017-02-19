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
@synthesize switchState;
@synthesize selectorState;
@synthesize selectorChoice;
@synthesize sliderLabel;
@synthesize sliderOutlet;
@synthesize switchOutlet;

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



- (IBAction)switch:(id)sender {
    
    if(switchOutlet.on) {
        
        switchState.text = @"The switch is: on";
        
    }
    
    if(!switchOutlet.on) {
        
        switchState.text = @"The switch is: off";
        
    }
    
}
- (IBAction)selector:(id)sender {
    
//    if(selectorChoice.selectedSegmentIndex == nil) {
//        
//        selectorState.text = @"No segment selected";
//        
//    }
    
    if(selectorChoice.selectedSegmentIndex == 0) {
        
        selectorState.text = @"First segment selected";
        
    }
    
    if(selectorChoice.selectedSegmentIndex == 1) {
        
        selectorState.text = @"Second segment selected";
        
    }
    
}
- (IBAction)sliderValue:(id)sender {
    
    int percentage = sliderOutlet.value * 100;
    
    sliderLabel.text = [NSString stringWithFormat:@"%d %%",percentage];
    
}
@end
