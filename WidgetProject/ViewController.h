//
//  ViewController.h
//  WidgetProject
//
//  Created by Gray, Nathan on 2/19/17.
//  Copyright © 2017 Gray, Nathan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

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

@end

