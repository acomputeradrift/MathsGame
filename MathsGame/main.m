//
//  main.m
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        ScoreKeeper *testScore = [[ScoreKeeper alloc] init];

        while (gameOn == YES)
        {
            AdditionQuestion *addition = [[AdditionQuestion alloc] init];
            NSLog (@"%@", addition.question);
            
            InputHandler *inputHandler = [[InputHandler alloc] init];
            
            NSString *userAnswerString = [inputHandler userInputForPrompt:@"Please enter the answer (or type QUIT to exit):"];
            
            NSInteger userAnswer = [userAnswerString intValue];
            
            if ([userAnswerString isEqualToString:@"QUIT"]) {
                gameOn = NO;
                continue; //jumps the loop back to the "start"
            }
            if (userAnswer == addition.answer) {
                NSLog(@"Right!");
                [testScore scoreKeeper:1 :0];
            }
            if (userAnswer != addition.answer) {
                NSLog(@"Wrong!");
                [testScore scoreKeeper:0 :1];
            }
            //creating a pointer to object           class               property
            //NSCharacterSet *whiteSpaceAndNewLine = NSCharacterSet.whitespaceAndNewlineCharacterSet;
            //          new string returned         receiver            method                         parameter
            //       NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
        }
    }
    return 0;
}
