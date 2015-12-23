//
//  Deck.h
//  CardGame
//
//  Created by apple on 15/2/26.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop ;
- (void)addCard:(Card *)card ;

- (Card *)drawRandomCard ;

@end
