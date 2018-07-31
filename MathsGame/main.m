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
        
        while (true)
        {
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            //creating a pointer to object           class               property
            NSCharacterSet *whiteSpaceAndNewLine = NSCharacterSet.whitespaceAndNewlineCharacterSet;
            
            // new string returned         receiver            method                         parameter
            NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
            
            NSLog(@"%@", finalInputString);
        }
    }
    return 0;
}
