//
//  Card.h
//  Cards
//
//  Created by Subhankar Acharya on 11/03/20.
//  Copyright © 2020 Subhankar Acharya. All rights reserved.
//

//public implementation of class -> single inhertance -> no multiple inheritance -> use protocol for conformance

#import <Foundation/Foundation.h>

@interface Card : NSObject

//Mark:- DESCRIPTION
/*
 1. this property represents two menthods, a setter and a getter, it goes behind the scene, its getting a pointer to NSString object.
 2. ALL OBJECTS IN OBJECTIVE C LIVE IN THE HEAP.
 3. contents is an pointer to NSString object.
 4. setter of a property which is a pointer to an object. We are setting or getting the pointer. So the way this contents thing would point to a string is, someone would call the setter for this thing and set it to as some pointer to a string.
 5. nonatomic means this property is not thread safe.
 6. by default its atomic
 */
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isFaceUp) BOOL faceUP;    //BOOL is a primitive and we stil don't want the locking, that's why nonatomic. isFaceUp improves readability.
@property (nonatomic, getter=isUnPlayable) BOOL unPlayable;
/*
 Regular objective C method.
 1. it's public as it's in header file.
 2. retuns Int
 3. takes pointer to another Card as an argument
 4. semantics are it compares itelf to that card and returns 0, if it doesn't match that card and returns some number, that represent how good a match it is otherwise.
 */
-(int)match:(Card *)card;
@end


