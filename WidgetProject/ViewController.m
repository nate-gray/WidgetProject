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
@synthesize textOutlet;
@synthesize scrollView;

int buttonWasPressed;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWasShown:) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillBeHidden:) name:UIKeyboardWillHideNotification object:nil];
    
    
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

- (IBAction)didEndEditing:(id)sender {
    
    activeField = nil;
    
}

- (IBAction)didBeginEditing:(id)sender {
    
    activeField = sender;
    
}

- (IBAction)doneWithKeyboard:(id)sender {
    
    activeField = nil;
    [sender resignFirstResponder];
    
}

- (void) keyboardWasShown: (NSNotification *) aNotification {
    
    NSDictionary *info = [aNotification userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey]CGRectValue].size;
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0);
    
    scrollView.contentInset = contentInsets;
    scrollView.scrollIndicatorInsets = contentInsets;
    
    CGRect aRect = self.view.frame;
    aRect.size.height -= kbSize.height;
    
    if(!CGRectContainsPoint(aRect, activeField.frame.origin)) {
        
        CGPoint scrollPoint = CGPointMake(0.0, activeField.frame.origin.y - kbSize.height);
        
        [scrollView setContentOffset:scrollPoint animated:YES];
        
    }
    
}

- (void) keyboardWillBeHidden: (NSNotification *) aNotification {
    
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    scrollView.contentInset = contentInsets;
    scrollView.scrollIndicatorInsets = contentInsets;
    
}

@end
