//
//  ViewController.m
//  MyCalculator
//
//  Created by Xinchao Liu on 3/25/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.26, 2013
//
//  File Description: This is the ViewController's implementation. It controls
//                      the main view of the calculator. Listen to all buttons
//                      of the view, and send the button tag and screen info to
//                      model, then modify the screen from the calculate result.

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize calculatorModel;
@synthesize displayLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Initialize display & model
    displayLabel.text = @"0";
    calculatorModel.firstOperand = 0;
    calculatorModel.secondOperand = 0;
    calculatorModel.currentOperator = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Rewrite to initialize calculator model
- (CalculatorModel *)calculatorModel {
    if (!calculatorModel)
        calculatorModel = [[CalculatorModel alloc] init];
    return calculatorModel;
}

// When user pressed any button
- (IBAction)buttonPressed:(id)sender {
    if ([sender tag] <= 9) { // number pressed
        displayLabel.text =
            [self.calculatorModel numberPressed:[sender tag]
                              withCurrentScreen:displayLabel.text];
    } else if ([sender tag] >9 && [sender tag] < 20) { // unary operator pressed
        displayLabel.text =
            [self.calculatorModel unaryPressed:[sender tag]
                             withCurrentScreen:displayLabel.text];
    } else if ([sender tag] == 20) { // equal pressed
        displayLabel.text =
        [self.calculatorModel equalPressedWithCurrentScreen:displayLabel.text];
    } else if ([sender tag] >20) { // binary operator pressed
        displayLabel.text =
            [self.calculatorModel binaryPressed:[sender tag]
                              withCurrentScreen:displayLabel.text];
    } 
 }
@end
