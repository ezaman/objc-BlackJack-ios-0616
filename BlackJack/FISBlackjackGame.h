//
//  FISBlackjackGame.h
//  BlackJack
//
//  Created by Ehsan Zaman on 6/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"

@interface FISBlackjackGame : NSObject

@property (strong, nonatomic) FISCardDeck *deck;
@property (strong, nonatomic) FISBlackjackPlayer *house;
@property (strong, nonatomic) FISBlackjackPlayer *player;

-(void) playBlackjack;
-(void) dealNewRound;
-(void) dealCardToPlayer;
-(void) dealCardToHouse;
-(void) processPlayerTurn;
-(void) processHouseTurn;
-(BOOL) houseWins;
-(void) incrementWinsAndLossesForHouseWins: (BOOL) houseWins;


@end
