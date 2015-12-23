//
//  PlayintCard.h
//  CardGame
//
//  Created by apple on 15/2/26.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import "Card.h"

@interface PlayintCard : Card

@property (strong,nonatomic) NSString *suit ; //花色
@property (nonatomic) NSInteger rank ; //数字

+ (NSArray *)validSuits ;
+ (NSUInteger)maxRank ;


@end
