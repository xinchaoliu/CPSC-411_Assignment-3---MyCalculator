/*------------------------------------------------------------------------------
----------------------------------Xinchao Liu-----------------------------------
----------------------------------MyCalculator----------------------------------
------------------------------------------------------------------------------*/

/*  What is it?
      This is an iPhone calculator application that accepts infix notation 
      arithmetic expressions. The calculator accepts manual input of real 
      numbers as operands and a fixed set of unary and binary operators.      */

/*  How to use it?
      - Addition:
            1. Press AC.
            2. Input the first operand by using number buttons.
            3. Press the |+| button.
            4. Input the second operand by using number buttons.
            5. Press |=| to get the result, or press other operators to continue
                calculating.
            *example:
                input: 1 2 3 + 9 = 
                output: 132
                input: 1 2 + 9 * 5 -
                output: 105
        
      - The other binary: |-|, |x|, |÷| are the same way as addition.

      - Plus-minus:
            While inputing number or view results, press |±| to change a 
            positive number into negative vice versa.
      
      - Point:
            While inputing numbers, press |.| to add a decimal in the end. If
            already exist a decimal then nothing happens.
    
      - Square root:
            Any time, when |√| pressed, the square root result of the current 
            screen value will shown.
            *example:
                input: 1 6 * 4 + √ =
                output: 72
        
      - All clear:
            Press |AC|, all previous operand and operator will be clear. Screen
            value reset to 0.
            
      - Some inner logic:
            *example:
                input: 4 * = =
                output: 64
                input: 5 - 1 = = =
                output: 2
            *reason:
                When |=| pressed, the previous operand & operator will perform
                once more.
                
            *example
                input: 2 1 - + 5 =
                output: 26
            *reason:
                when multiple binary operator pressed, only the last one will be
                taken.                                                        */
         
/*  Features Completed:
      - Receive inputing numbers
      - Addition
      - Subtraction
      - Division
      - Multiplication
      - Square Roots
      - Decimals
      - Plus-minus
      - All Clear
      - Equals
      - Show calculate result on screen                                       */
      
/*  Features not Completed:
      - All features considered have been implemented.                        */
      
/*  Bugs:
      - There are no known bugs.                                              */
      
/*  External Dependancies:
      - No external dependancies.                                             */
      
/*  About the Author:
      Xinchao Liu
      Leo_Liu@csu.fullerton.edu                                               */
