//
//  PlayingCard.h
//  Cards
//
//  Created by Subhankar Acharya on 19/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank; //typedefed unsigned int
+(NSArray *)validSuits;


@end
