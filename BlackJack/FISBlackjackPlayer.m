//
//  FISBlackjackPlayer.m
//  BlackJack
//
//  Created by Ehsan Zaman on 6/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FISBlackjackPlayer.h"

@implementation FISBlackjackPlayer

-(instancetype)init{
  return self = [self initWithName:@""];
}

-(instancetype) initWithName: (NSString*)name{
    self = [super init];
    if (self) {
        _name = name;
        _cardsInHand = [NSMutableArray new];
        _handscore = 0;
        _wins = 0;
        _losses = 0;
        _aceInHand = NO;
        _blackjack = NO;
        _stayed = NO;
        _busted = NO;
    }return self;
}

-(void) resetForNewGame{
    [self.cardsInHand removeAllObjects];
    self.handscore = 0;
    self.aceInHand = NO;
    self.blackjack = NO;
    self.stayed = NO;
    self.busted = NO;
    
    
}
-(void)acceptCard: (FISCard*)card{
    [self.cardsInHand addObject:card];
    
    NSUInteger score = 0;
    
    for (FISCard *card in self.cardsInHand) {
        score += card.cardValue;
        
        if ([card.rank isEqualToString:@"A"]) {
            self.aceInHand = YES;
        }
    }
    
    if (self.aceInHand && score <= 11) {
        score += 10;
    }
    
    self.handscore = score;
    
    if (self.cardsInHand.count == 2 && self.handscore == 21){
        self.blackjack = YES;
    }
    if (self.handscore > 21){
        self.busted =  YES;
}

}
    //        TO REVIEW!!!       //
    
//    [self.cardsInHand addObject:card];
//    self.handscore += card.cardValue;
//    
//    for (FISCard *cardAce in self.cardsInHand){
//        if ([cardAce.rank isEqualToString:@"A"]){
//            self.aceInHand = YES;
//        }
//        if (self.aceInHand && self.aceInHand <= 11 ) {
//                self.handscore += 10;
//        }
//    }
//
//    if (self.cardsInHand.count == 2 && self.handscore == 21){
//        self.blackjack = YES;
//    }
//    
//    if (self.handscore >= 21){
//        self.busted =  YES;


-(BOOL)shouldHit{
    
    if (self.handscore >= 17){
        self.stayed = YES;
        return NO;
    }
    return YES;
}

-(NSMutableString *)description{

    NSMutableString *describe = [[NSMutableString alloc]init];
    
    [describe appendFormat:@"name: %@", self.name];
    
    [describe appendFormat:@"\ncards: %@", self.cardsInHand];
    
    [describe appendFormat:@"\nhandscore : %lu", self.handscore];
    
    [describe appendFormat:@"\nace in hand : %d", self.aceInHand];
    [describe appendFormat:@"\nstayed : %d", self.stayed];
    
    [describe appendFormat:@"\nblackjack : %d", self.blackjack];
    
    [describe appendFormat:@"\nbusted : %d", self.busted];
    
    [describe appendFormat:@"\nwins : %lu", self.wins];
    
    [describe appendFormat:@"\nlosses : %lu", self.losses];
    
return describe;
}

@end
