//
//  PlayingCardDeck.m
//  Cards
//
//  Created by Subhankar Acharya on 21/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(id)int //id means pointer to object of any class
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank ++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;  //setter , self.rank , its on ledt side of equal to sign
                card.suit = suit;  //setter , self.suit , its on left side of equal to sign
            }
        }
    }
    return self;
}

@end
