//
//  CalculatorModel.m
//  MyCalculator
//
//  Created by Xinchao Liu on 3/26/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.26, 2013
//
//  File Description: This is the implementation for the calculator model.
//                    It receives the values from the ViewController and
//                    perform the calculate then return the result 

#import "CalculatorModel.h"

@implementation CalculatorModel

@synthesize firstOperand;
@synthesize secondOperand;
@synthesize currentOperator;
@synthesize isEntering;

- (BOOL) isPointExist:(NSString *)screen {
    return ([screen rangeOfString:@"."].location != NSNotFound);
}

- (NSString *)numberPressed:(int)tag withCurrentScreen:(NSString *)screen {
    float screenValue = [screen floatValue];
    if(isEntering == NO) {
        isEntering = YES;
        return [NSString stringWithFormat:@"%d", tag];
    } else if ([screen length] >= 13) {
        return screen;
    } else if (screenValue == 0 && [self isPointExist:screen] == NO) {
        return [NSString stringWithFormat:@"%d", tag];
    } else
        return [screen stringByAppendingString:
                [NSString stringWithFormat:@"%d",tag]];
}

- (NSString *)unaryPressed:(int)tag withCurrentScreen:(NSString *)screen {
    float screenValue = [screen floatValue];
    switch (tag) {
        case 10: // dot
        {
            if ([self isPointExist:screen] == NO) {
                return [screen stringByAppendingString:@"."];
            } else return screen;
            break;
        }
        case 11: // plus-minus 
        {            
            if (screenValue == 0) {
                return screen;
            } else {
            screenValue *= -1.0f;
            NSNumber *screenNumber = [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            }
            break;
        }
        case 12: // root
        {
            if (screenValue >= 0) {
            screenValue = sqrtf(screenValue);
            NSNumber *screenNumber = [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            }
            break;
        }  
        case 15: // all clear
        {
            firstOperand = 0;
            secondOperand = 0;
            currentOperator = 0;
            break;
        }
        default:
            break;
    }
    return @"0";
}

- (NSString *)binaryPressed:(int)tag withCurrentScreen:(NSString *)screen {
    float screenValue = [screen floatValue];
    firstOperand = screenValue;
    currentOperator = tag;
    isEntering = NO;
    return screen;
}

- (NSString *)equalPressedWithCurrentScreen:(NSString *)screen {
    // get current screen value
    float screenValue = [screen floatValue];
    
    // compute result base on current operator
    switch (currentOperator) {
        case 21: // multiply
        {
            // prepare current operator for press equal again
            currentOperator = 26;
            // get second operand
            secondOperand = screenValue;
            // perform calculate
            screenValue = firstOperand * secondOperand;
            // send the result back
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 22: // divide
        {
            // prepare current operator for press equal again
            currentOperator = 27;
            // get second operand
            secondOperand = screenValue;
            // perform calculate
            screenValue = firstOperand / secondOperand;
            // send the result back
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 23: // plus
        {
            currentOperator = 28;
            secondOperand = screenValue;
            screenValue = firstOperand + secondOperand;
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 24: // minus
        {
            currentOperator = 29;
            secondOperand = screenValue;
            screenValue = firstOperand - secondOperand;
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 26: // press equal again to keep multiply
        {
            // repeat the previous compute
            screenValue = screenValue * secondOperand;
            // send the result
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 27: // press equal again to keep divide
        {
            // repeat the previous compute
            screenValue = screenValue / secondOperand;
            // send the result
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 28: // press equal again to keep plus
        {
            screenValue = screenValue + secondOperand;
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        case 29: // press equal again to keep minus
        {
            screenValue = screenValue - secondOperand;
            NSNumber *screenNumber =
                [NSNumber numberWithFloat:screenValue];
            return [screenNumber stringValue];
            break;
        }
        default:
            return screen;
            break;
    }
}

@end
