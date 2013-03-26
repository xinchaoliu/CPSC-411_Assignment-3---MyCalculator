//
//  CalculatorModel.h
//  MyCalculator
//
//  Created by Xinchao Liu on 3/26/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.26, 2013
//
//  File Description: This is the interface for the calculator model. It
//                      contains the calculate logic of the model.

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject

// first operand get from screen
@property (assign) float firstOperand;

// second operand get from screen
@property (assign) float secondOperand;

// current operator exist after user pressd binary operator
@property (assign) int currentOperator;

@property (assign) BOOL isEntering;
// if is entering numbers = YES; if binary operator pressed = NO

// 
- (BOOL) isPointExist:(NSString *)screen;
- (NSString *)numberPressed:(int)tag withCurrentScreen:(NSString *)screen;
- (NSString *)unaryPressed:(int)tag withCurrentScreen:(NSString *)screen;
- (NSString *)binaryPressed:(int)tag withCurrentScreen:(NSString *)screen;
- (NSString *)equalPressedWithCurrentScreen:(NSString *)screen;

@end
