//
//  ScoreKeeper.h
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int rightTotal;
@property int wrongTotal;

- (void) scoreKeeper: (int) rightAnswers
                    : (int) wrongAnswers;

@end
