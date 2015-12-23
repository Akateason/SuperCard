//
//  PlayingCardView.h
//  SuperCard
//
//  Created by apple on 15/6/15.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank ;
@property (nonatomic,strong) NSString *suit ;
@property (nonatomic) bool faceUp ;


- (void)pinch:(UIPinchGestureRecognizer *)gesture ;

@end
