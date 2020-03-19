//
//  Deck.m
//  Cards
//
//  Created by Subhankar Acharya on 18/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; //of Card
@end

@implementation Deck

/*
 if we call the getter on the card and the card is nil, then it would initialise it
 */

-(NSMutableArray *)cards{
    if(!_cards)_cards = [[NSMutableArray alloc] init];  //lazy instantiation
    return _cards;
}

-(void) addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else {
        [self.cards addObject:card];
    }
}

//local variables start out as zero in Objective-C

-(Card *)drawRandomCard
{
    Card *randowmCard = nil; // it essentially means 0.
    
    if (self.cards.count){
        unsigned index = arc4random() % self.cards.count;
        randowmCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randowmCard;
}

@end
