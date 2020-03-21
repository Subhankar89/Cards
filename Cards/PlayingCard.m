//
//  PlayingCard.m
//  Cards
//
//  Created by Subhankar Acharya on 19/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

#import "PlayingCard.h"

/*
 We are creating and self protecting this class against any crash and not allowing any other outside entity to set its
 property.
 */

@implementation PlayingCard

-(NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings]; //create an array on the fly
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}
@synthesize suit = _suit;
/*
 When you implement both the getter and setter, you dont get free @synthesise anymore. We would
 have to type it on our own.
 */

-(void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

-(void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

/*
 We use class methods, generally for Utility things
 */

+(NSArray *)validSuits
{
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}

+(NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger) maxRank {return [self rankStrings].count - 1; } //what's the maimum rank that I can have

@end

