//
//  FISBlackjackPlayer.h
//  BlackJack
//
//  Created by Ehsan Zaman on 6/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISCard.h"

@interface FISBlackjackPlayer : NSObject

@property(strong,nonatomic)NSString *name;
@property(strong, nonatomic)NSMutableArray *cardsInHand;
@property (nonatomic)BOOL aceInHand;
@property(nonatomic)BOOL blackjack;
@property(nonatomic)BOOL busted;
@property(nonatomic)BOOL stayed;
@property (nonatomic)NSUInteger handscore;
@property (nonatomic)NSUInteger wins;
@property(nonatomic)NSUInteger losses;

-(instancetype) initWithName: (NSString*)name;
-(void) resetForNewGame;
-(void)acceptCard: (FISCard*)card;
-(BOOL)shouldHit;
-(void)scoreOfHand;

@end
