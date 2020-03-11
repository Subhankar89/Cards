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
 Here is what the compiler is generating behind the scenes, not in our code, when we do a @property. There is three parts to it:
 1. synthesize
 2. getter
 3. setter
 */

@synthesize contents = _contents;  //this is saying, the property name contents is using an instance variable _contents.

-(NSString *)contents  //getter
{
    return _contents; // _contents is an instance variable
}

-(void)setContents:(NSString *)contents  //setter
{
    _contents = contents;
}

@end
