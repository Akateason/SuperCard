//
//  ViewController.m
//  SuperCard
//
//  Created by apple on 15/6/15.
//  Copyright (c) 2015年 teason. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "PlayintCard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playCardView;
@property (strong ,nonatomic) PlayingCardDeck *deck ;
//@property

@end

@implementation ViewController

- (PlayingCardDeck *)deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init] ;
    }
    return _deck ;
}

- (void)drawRandomPlayingCard
{
    Card *card = [self.deck drawRandomCard] ;
    if ([card isKindOfClass:[PlayintCard class]]) {
        PlayintCard *playingCard = (PlayintCard *)card ;
        self.playCardView.rank = playingCard.rank ;
        self.playCardView.suit = playingCard.suit ;
    }
}




- (IBAction)swipe:(id)sender
{
    if (!self.playCardView.faceUp) [self drawRandomPlayingCard] ;
        

    
    self.playCardView.faceUp = !self.playCardView.faceUp ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.playCardView.suit = @"❤️" ;
//    self.playCardView.rank = 13 ;
    
    [self.playCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playCardView action:@selector(pinch:)]] ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
