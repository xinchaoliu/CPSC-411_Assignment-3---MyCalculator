//
//  ViewController.h
//  MyCalculator
//
//  Created by Xinchao Liu on 3/25/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.26, 2013
//
//  File Description: This is the ViewController's interface. Here's all the
//                    connections to the view.

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface ViewController : UIViewController

// The calculator model
@property (strong, nonatomic) CalculatorModel *calculatorModel;

// The text(calculate result) on display
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

// The associated action for all buttons
- (IBAction)buttonPressed:(id)sender;

@end
