//
//  CardMatchingGame.h
//  CardGame
//
//  Created by apple on 15/3/1.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initializer
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck ;

- (void)chooseCardAtIndex:(NSUInteger)index ;
- (Card *)cardAtIndex:(NSUInteger)index ;

@property (nonatomic, readonly) NSInteger score ;

@end
