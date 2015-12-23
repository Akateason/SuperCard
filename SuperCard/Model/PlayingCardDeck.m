//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by apple on 15/2/26.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayintCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        for (NSString *suit in [PlayintCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayintCard maxRank]; rank++)
            {
                
                PlayintCard *card = [[PlayintCard alloc] init] ;
                card.rank = rank ;
                card.suit = suit ;
                [self addCard:card] ;
                
            }
        }
        
    }
    return self;
}

@end
