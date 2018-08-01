//
//  InputHandler.m
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) userInputForPrompt: (NSString *) prompt {
    
    char inputChars[255];
    
//    NSLog(@"%@", prompt);
    printf([prompt UTF8String]);
    fgets(inputChars, 255, stdin);
    NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    //NSLog(@"%@", finalInputString);
    // Grab the user input. Convert it from an NSString* to an NSInteger using the property intValue.
    // Compare this value to the question instance's answer. Log out the message Right! or Wrong! depending on whether they got it right or wrong.
    //NSInteger myInt = [myString intValue];
    
    return finalInputString;
}

@end
