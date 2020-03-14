//
//  Card.m
//  Cards
//
//  Created by Subhankar Acharya on 11/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

//private implementaion of class

#import "Card.h"

@interface Card()

@end

@implementation Card

/*
 We are calling a getter (contents) for the first time.
 One is on the card that is passed as an argument and the other getter is called on myself(CARD). Both of these getters are going to return pointers to String.
 So we have 2 strings. Now we are using isEqualToString method to compare them.
 */
-(int)match:(Card *)card{
    int score = 0;
    
    if ([card.contents isEqualToString:self.contents]) {
        score = 1;
    }
    return score;
}
@end
