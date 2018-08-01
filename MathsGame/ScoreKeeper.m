//
//  ScoreKeeper.m
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) scoreKeeper: (int) rightAnswers
                    : (int) wrongAnswers {
    
    int percent = 0;
    
    self.rightTotal = self.rightTotal + rightAnswers;
    self.wrongTotal = self.wrongTotal + wrongAnswers;
    
    percent = 100 * ((float)self.rightTotal/(float)self.wrongTotal);
    
    NSLog(@"Score: %d right, %d wrong: Percent: %d", self.rightTotal, self.wrongTotal, percent);
}

@end
