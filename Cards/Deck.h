//
//  Deck.h
//  Cards
//
//  Created by Subhankar Acharya on 18/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck: NSObject

-(void) addCard:(Card *)card atTop:(BOOL)atTop;
-(Card *)drawRandomCard;

@end

