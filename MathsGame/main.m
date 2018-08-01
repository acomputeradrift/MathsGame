//
//  main.m
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        BOOL gameOn = YES;
        
        while (gameOn == YES)
        {
            AdditionQuestion *addition = [[AdditionQuestion alloc] init];
            NSLog (@"%@", addition.question);
            printf("Please enter the answer (or type QUIT to exit): ");
            fgets(inputChars, 255, stdin);
            NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            //NSLog(@"%@", finalInputString);
            // Grab the user input. Convert it from an NSString* to an NSInteger using the property intValue.
            // Compare this value to the question instance's answer. Log out the message Right! or Wrong! depending on whether they got it right or wrong.
            //NSInteger myInt = [myString intValue];
            NSInteger userAnswer = [finalInputString intValue];
            
            if ([finalInputString isEqualToString:@"QUIT"]) {
                gameOn = NO;
                continue; //jumps the loop back to the "start"
            }
            if (userAnswer == addition.answer) {
                NSLog(@"Right!");
            }
            if (userAnswer != addition.answer) {
                NSLog(@"Wrong!");
            }
            //creating a pointer to object           class               property
            //NSCharacterSet *whiteSpaceAndNewLine = NSCharacterSet.whitespaceAndNewlineCharacterSet;
            //          new string returned         receiver            method                         parameter
            //       NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
        }
    }
    return 0;
}
