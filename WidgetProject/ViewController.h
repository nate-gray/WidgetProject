//
//  ViewController.h
//  WidgetProject
//
//  Created by Gray, Nathan on 2/19/17.
//  Copyright © 2017 Gray, Nathan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    UITextField *activeField;
    
}

- (IBAction)buttonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *buttonCounter;

- (IBAction)switch:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *switchOutlet;


@property (weak, nonatomic) IBOutlet UILabel *switchState;

- (IBAction)selector:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *selectorChoice;

@property (weak, nonatomic) IBOutlet UILabel *selectorState;

@property (weak, nonatomic) IBOutlet UISlider *sliderOutlet;

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;

- (IBAction)sliderValue:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *textOutlet;

- (IBAction)didEndEditing:(id)sender;
- (IBAction)didBeginEditing:(id)sender;
- (IBAction)doneWithKeyboard:(id)sender;

- (void) keyboardWasShown: (NSNotification *) aNotification;
- (void) keyboardWillBeHidden: (NSNotification *) aNotification;

@property (weak, nonatomic) IBOutlet UILabel *labelText;

- (IBAction)updateLabelText:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *getText;

@end

