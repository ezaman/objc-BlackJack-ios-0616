//
//  FISCardDeck.h
//  OOP-Cards-Model
//
//  Created by Ehsan Zaman on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISCard.h"

@interface FISCardDeck : NSObject

@property (strong, nonatomic) NSMutableArray *remainingCards;
@property (strong,nonatomic) NSMutableArray *dealtCards;

- (FISCard*)drawNextCard;
- (void) resetDeck;
- (void) gatherDealtCards;
- (void) shuffleRemainingCards;

-(instancetype)init;
//-(instancetype)initWithRemainingCards: (NSMutableArray*)remainingCards
                 //          dealtCards: (NSMutableArray*)dealtCards;


@end
