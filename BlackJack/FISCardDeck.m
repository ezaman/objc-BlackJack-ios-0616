//
//  FISCardDeck.m
//  OOP-Cards-Model
//
//  Created by Ehsan Zaman on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCardDeck.h"
#import "FISCard.h"

@implementation FISCardDeck

-(void) generateAllCards{
    NSArray *validSuits = [FISCard validSuits];
    NSArray *validRanks = [FISCard validRanks];
    
    for (NSString *suit in validSuits){
        for (NSString *rank in validRanks) {
            FISCard *singleCard = [[FISCard alloc]initWithSuit:suit rank:rank];
            [self.remainingCards addObject: singleCard];
        }

    }
    
    NSLog(@"%lu", self.remainingCards.count);
    
}

-(instancetype)init{

    self = [super init];

    if (self) {
        _dealtCards = [[NSMutableArray alloc] init];
        _remainingCards = [[NSMutableArray alloc] init];
        [self generateAllCards];
    }
    
    return self;
}

- (FISCard*)drawNextCard{
    if (self.remainingCards.count ==0){
        return nil;}
    FISCard *DrawingCard = self.remainingCards[0];
    [self.dealtCards addObject:DrawingCard];
    [self.remainingCards removeObjectAtIndex:0];

    
    return DrawingCard;
}
-(void) resetDeck{
[self gatherDealtCards];
[self shuffleRemainingCards];
 
}
-(void) gatherDealtCards{
    [self.remainingCards addObjectsFromArray:self.dealtCards];
    [self.dealtCards removeAllObjects];
    
}

-(void) shuffleRemainingCards{
    NSMutableArray *cardsToRandomize = [self.remainingCards mutableCopy];
    [self.remainingCards removeAllObjects];
    
    NSUInteger cardCount = cardsToRandomize.count;
    
    for(NSUInteger i = 0; i < cardCount; i++){
        NSUInteger cardCountNew = cardsToRandomize.count;
        NSUInteger randomize = arc4random_uniform((unsigned int)cardCountNew);
        FISCard *singleCard = cardsToRandomize[randomize];
        [cardsToRandomize removeObjectAtIndex: randomize];
        [self.remainingCards addObject:singleCard];

    }
}
- (NSString *)description {
    
    NSMutableString *remainingCards = [[NSMutableString alloc]init];
    
    [remainingCards appendFormat: @"Count: %lu", self.remainingCards.count];
    
    [remainingCards appendString: @"Cards:"];
    
    for (NSUInteger i = 0; i < self.remainingCards.count; i++) {
        FISCard *card = self.remainingCards[i];
        [remainingCards appendFormat:@" %@", card.description];
    }
    
    
    return remainingCards;
}

@end
