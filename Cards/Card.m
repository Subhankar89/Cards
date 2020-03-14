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

@synthesize faceUP = _faceUP;
@synthesize unPlayable = _unPlayable;

-(BOOL)faceUP{
    return _faceUP;
}
-(void) setFaceUP:(BOOL)faceUP{
    _faceUP = faceUP;
}

-(BOOL)unPlaybale{
    return _unPlayable;
}
-(void)setUnPlayable:(BOOL)unPlayable
{
    _unPlayable = unPlayable;
}

@end
