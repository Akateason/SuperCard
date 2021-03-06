//
//  Card.h
//  CardGame
//
//  Created by apple on 15/2/26.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents ;

@property (nonatomic, getter=isChosen) BOOL chosen ;
@property (nonatomic, getter=isMatched) BOOL matched ;

- (int)match:(Card *)card ;


@end
